class User < ActiveRecord::Base
  has_many :search_ownerships
  has_many :search_subscriptions
  has_many :searches, :through => :search_ownerships
  has_many :searches, :through => :search_subscriptions

  has_many :list_ownerships
  has_many :list_subscriptions
  has_many :search_lists, :through => :list_ownerships
  has_many :search_lists, :through => :list_subscriptions
  
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  validates :name, :presence => true, :length => { :maximum => 50 }
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
   
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i                    
  validates :email, :presence => true, :format => { :with => email_regex }

  before_save :encrypt_password
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password) else nil
  end
  
  private
    def encrypt_password
      self.salt = make_salt unless has_password?(password)
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")  
    end
  
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
  
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end
