class Post < ActiveRecord::Base
  validates :user_id, presence: true
  validates :body, presence: true
  validates :title, presence: true
  default_scope -> { order('created_at DESC') }
  belongs_to :user
end
