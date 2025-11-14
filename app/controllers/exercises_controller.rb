class ExercisesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_exercise, only: %i[ show update destroy ]

  def index
    @exercises = Exercise.where(user_id: current_user)

    render json: @exercises
  end

  def show
    render json: @exercise
  end

  def create
    @exercise = current_user.exercises.build(exercise_params)

    if @exercise.save
      render json: @exercise, status: :created, location: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_content
    end
  end

  def update
    if @exercise.update(exercise_params)
      render json: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_content
    end
  end

  def destroy
    @exercise.destroy!
  end

  private

  def set_exercise
    @exercise = Exercise.find(params.expect(:id))
  end

  def exercise_params
    params.require(:exercise).permit(:name)
  end
end
