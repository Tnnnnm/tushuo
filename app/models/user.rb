class User < ActiveRecord::Base
  attr_accessible :hashed_passwd, :login, :salt, :password

  validates :login, :presence => true

  def password
    @passwrod
  end

  def password=(pass)
    return unless pass
    @password = pass
    generate_password(pass)
  end

  def self.authenticate(login, password)
    user = User.find_by_login(login)
    if user && Digest::SHA256.hexdigest(password + user.salt) == user.hashed_password
      return user
    end
    false
  end

  private
  def generate_password(pass)
    salt = Array.new(10){rand(1024).to_s(36)}.join
    self.salt, self.hashed_password = salt, Digest::SHA256.hexdigest(pass + salt)
   end

end
