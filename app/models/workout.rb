class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_sets

  attr_accessor :exercise_ids

  after_create :create_initial_workout_sets

  def ordered_workout_sets
    workout_sets.joins(:exercise).includes(:exercise).order("exercises.name ASC, workout_sets.set_order ASC")
  end

  private

  def create_initial_workout_sets
    Rails.logger.info "========= CREATE INITIAL SETS========="
    Rails.logger.info "exercise_id: #{exercise_ids.inspect}"

    return unless exercise_ids.present?

    exercise_ids.each do |exercise_id|
    workout_set = workout_sets.build(
        exercise_id: exercise_id,
        weight: nil,
        reps: nil,
        set_order: 1
      )

    Rails.logger.info "Set valid?: #{workout_set.valid?}"
    Rails.logger.info "Set errors: #{workout_set.errors.full_messages}" unless workout_set.valid?

    if workout_set.save
      Rails.logger.info "Set saved successfully: #{workout_set.id}"
    else
      Rails.logger.info "Set failed to save: #{workout_set.errors.full_messages}"
    end
    end
  end
end
