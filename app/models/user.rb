class User < ActiveRecord::Base
  has_one :preference, :dependent => :destroy
  
  has_many :filter_ownerships, :dependent => :destroy
  has_many :owned_filters, :through => :filter_ownerships, :source => :filter, :include => :tags, :dependent => :destroy

  has_many :list_ownerships, :dependent => :destroy
  has_many :list_subscriptions, :dependent => :destroy
  has_many :lists, :through => :list_subscriptions, :include => :tags
  has_many :owned_lists, :through => :list_ownerships, :source => :list, :include => :tags, :dependent => :destroy
  
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  validates :name, :presence => true, :length => { :maximum => 50 }
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
   
  before_save :encrypt_password
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i             
  validates :email, :presence => true, :format => { :with => email_regex }
  validates_uniqueness_of :email
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
  
  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
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
