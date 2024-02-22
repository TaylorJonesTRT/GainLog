class RepSet < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise
  belongs_to :training
end
