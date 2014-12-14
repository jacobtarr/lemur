class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 160 }
  validates :headline, presence: true, length: { maximum: 50 }
  validates :date, presence: true
  validates :location, presence: true
end
