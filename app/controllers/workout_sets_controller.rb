class WorkoutSetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workout_set, only: %i[ show update destroy ]

  def index
    @wourkout_sets = WorkoutSet.where(user_id: current_user)

    render json: @workout_sets
  end

  def show
    render json: @worktout_set
  end

  def create
    @workout_set =  WorkoutSet.new(workout_set_params)
    @workout = current_user.workouts.find(@workout_set.workout_id)

    if @workout_set.save
      render json: @workout_set, status: :created, location: @workout_set
    else
      render json: @workout_set.errors, status: :unprocessable_content
    end
  end

  def update
    if @workout_set.update(workout_set_params)
      render json: @workout_set
    else
      render json: @workout_set.errors, status: :unprocessable_content
    end
  end

  def destroy
    @workout_set.destroy!
  end

  private

  def set_workout_set
    @workout_set = WorkoutSet.find(params.expect(:id))
  end

  def workout_set_params
    params.require(:workout_set).permit(:workout_id, :exercise_id, :reps, :weight, :set_order, :notes, :rest_time)
  end
end
