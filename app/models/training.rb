class Training < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  has_many :rep_sets
end
