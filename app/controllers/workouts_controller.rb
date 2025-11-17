class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workout, only: %i[ show update destroy ]

  def index
    @wourkouts = Workout.where(user_id: current_user)

    render json: @workouts
  end

  def show
    render json: @workout
  end

  def create
    @workout = current_user.workouts.build(workout_params)

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_content
    end
  end

  def update
    if @workout.update(exercise_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_content
    end
  end

  def destroy
    @workout.destroy!
  end

  private

  def set_workout
    @workout = Workout.find(params.expect(:id))
  end

  def workout_params
    params.require(:workout).permit(:name)
  end
end
