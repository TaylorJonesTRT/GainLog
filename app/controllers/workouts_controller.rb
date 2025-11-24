class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workout, only: %i[ show update destroy ]

  def index
    @wourkouts = current_user.workouts.all

    render json: @workouts
  end

  def show
    @workout = current_user.workouts.find(params[:id])

  render json: @workout.as_json(only: [ :id, :user_id, :title, :created_at, :updated_at ]).merge(
      workout_sets: @workout.ordered_workout_sets.as_json(
        include: {
          exercise: {
            only: [ :id, :name ]
          }
        }
      )
    )
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
    if @workout.update(workout_params)
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
    params.require(:workout).permit(:title, :completed_at, exercise_ids: [])
  end
end
