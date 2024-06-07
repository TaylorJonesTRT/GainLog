class RepSetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_repset, only: [:update, :destroy]

  def create
    workout_id = repset_params[:workout_id]
    training_id = repset_params[:training_id]
    exercise_id = repset_params[:exercise_id]

    @rep_set = RepSet.build(workout_id:, training_id:, exercise_id:)

    if @rep_set.save
      redirect_to edit_workout_path(workout_id)
    else
      render edit_workout_path(id: workout_id), status: :unprocessable_entity
    end
  end

  def update
    workout_id = params[:workout_id]

    if @rep_set.update(repset_params)
      redirect_to edit_workout_path(workout_id)
    else
      render edit_workout_path(workout_id), status: :unprocessable_entity
    end
  end

  def destroy
    @rep_set.destroy

    workout_id = repset_params[:workout_id]

    redirect_to edit_workout_path(workout_id)
  end

  private

  def repset_params
    params.require(:rep_set).permit(:reps, :weight, :training_id, :workout_id, :exercise_id)
  end

  def set_repset
    @rep_set = RepSet.find(params[:id])
  end
end
