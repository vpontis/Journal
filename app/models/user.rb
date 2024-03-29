class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum:50}
  validates :password, length: {minimum: 6}
  has_secure_password
  has_many :posts, dependent: :destroy

  def feed
    Post.where("user_id = ?", id)
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
