class RepSet < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout
  belongs_to :training

  validates :reps, :weight, allow_nil: true, presence: true
end
