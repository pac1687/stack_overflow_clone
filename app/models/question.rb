class Question < ActiveRecord::Base
  validates :question, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

  has_many :answers
  belongs_to :user
end
