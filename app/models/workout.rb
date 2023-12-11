class Workout < ApplicationRecord
  belongs_to :user
  has_many :trainings
  has_many :rep_sets

  accepts_nested_attributes_for :trainings, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :rep_sets, allow_destroy: true
end
