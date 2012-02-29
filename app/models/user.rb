require 'password'
class User < ActiveRecord::Base
  def self.authenticate(nick, pass)
    user = find(:first, :conditions => ['nick = ?',nick])
    
    if Password::check(pass, user.password)
      user
    else
      return false
    end
  end

  def password=(pass)
    write_attribute(:password, password = Password::update(pass))
  end
  
  
  has_many :SearchStrings
  validates :name, :presence => true, :uniqueness => true
  validates :password, :presence => true
end
