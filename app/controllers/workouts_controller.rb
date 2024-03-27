require 'pp'

class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def show
    @workout = current_user.workouts.find(params[:id])
    @trainings = Training.where(workout_id: @workout).all
  end

  def new
    @workout = current_user.workouts.build
  end

  def edit
    @workout = Workout.find(params[:id])
    @workout_trainings = @workout.trainings.order(id: :asc)
  end

  def create
    @workout = current_user.workouts.build(user_id: current_user.id)
    if @workout.save
      workout_params[:exercises].each do |exercise|
        @training = Training.create(workout_id: @workout.id, exercise_id: exercise)
        if @training.save
          RepSet.create(workout_id: @workout.id, exercise_id: exercise, training_id: @training.id, reps: nil,
                        weight: nil)
        else
          render :new, status: :unprocessable_entity
        end
      end
      redirect_to edit_workout_path(@workout)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update; end

  private

  def workout_params
    params.require(:workout).permit(exercises: [])
  end
end
