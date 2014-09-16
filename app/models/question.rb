class Question < ActiveRecord::Base
  validates :text, presence: true
  validates :user_id, presence: true

  has_many :answers
  belongs_to :user
end
