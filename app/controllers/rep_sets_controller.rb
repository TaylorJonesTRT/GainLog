class RepSetsController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def show; end

  def create
    workout_id = repset_params[:workout_id]
    training_id = repset_params[:training_id]
    exercise_id = repset_params[:exercise_id]

    @rep_set = RepSet.create(workout_id:, training_id:, exercise_id:)
  end

  private

  def repset_params
    params.require(:rep_set).permit(:training_id, :workout_id, :exercise_id)
  end
end
