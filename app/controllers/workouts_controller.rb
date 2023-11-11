class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @workout = Workout.new
    @user = current_user
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to @workout
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def workout_params
    params.require(:workout).permit(:workout_name)
  end
end
