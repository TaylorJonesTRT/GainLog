class Exercise < ApplicationRecord
  belongs_to :user
  has_many :trainings

  validates :name, presence: true
end
