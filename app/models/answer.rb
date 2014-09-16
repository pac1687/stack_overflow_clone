class Answer < ActiveRecord::Base
  validates :text, presence: true
  validates :user_id, presence: true
  validates :question_id, presence: true

  has_many :votes
  belongs_to :question
  belongs_to :user
end
