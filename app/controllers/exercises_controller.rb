class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def index
    @exercises = current_user.exercises.order(name: :asc)
    @exercise = current_user.exercises.build
  end

  def create
    exercise_name = exercise_params[:name]

    @exercise = Exercise.build(name: exercise_name, user_id: current_user.id)

    if @exercise.save
      update_exercise_list
    else
      render exercises_path, status: :unprocessable_entity
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy

    update_exercise_list
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :personal_best)
  end

  def update_exercise_list
    render turbo_stream: turbo_stream.replace('exercise_list',
                                              partial: 'exercises/exercise_list',
                                              locals: { exercises: current_user.exercises.order(name: :asc) })
  end
end
