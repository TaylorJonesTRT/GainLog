class Workout < ApplicationRecord
  belongs_to :user

  has_many :trainings
  has_many :rep_sets
end
