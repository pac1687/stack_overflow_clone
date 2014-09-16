class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates_uniqueness_of :email
  validates :password, :presence => { :on => :create }
  validates :password_confirmation, :presence => { :on => :create }

  has_many :questions
  has_many :votes
  has_many :answers, through: :votes
end
