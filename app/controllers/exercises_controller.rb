class ExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @exercises = current_user.exercises
    @exercise = Exercise.new
  end

  def new
    @exercises = current_user.exercises
    @exercise = current_user.exercises.build
  end

  def create
    @exercises = current_user.exercises
    @exercise = current_user.exercises.build(exercise_params)

    if @exercise.save
      update_exercise_list
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def exercise_params
      params.require(:exercise).permit(:name, :user_id)
    end

    def update_exercise_list
      render turbo_stream:
               turbo_stream.replace("exercise_list",
                                    partial: "exercises/exercise_list",
                                    locals: { exercises: current_user.exercises })
    end
end
