class WorkoutsController < ApplicationController
  require 'pp'
  before_action :authenticate_user!
  before_action :set_workout, only: %i[destroy show edit update]

  def index; end

  def show; end

  def new
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.build(workout_params)

    if @workout.save
      params[:selected_exercises].each do |exercise|
        Training.create(workout_id: @workout.id, exercise_id: exercise)
      end
      redirect_to @workout
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    render inertia: 'WorkoutEdit', props: {
      name: 'Inertia testaroooo'
    }
  end

  def update
    @rep_sets = RepSet.new(rep_set_params)

    if @workout.update(workout_params)
      puts 'hello'
      puts params[:rep_sets_attributes]
      puts 'goodbye'
      redirect_to @workout
    else
      puts 'hello from the else'
      puts @workout.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:workout_name, :user_id, :selected_exercise)
  end

  def rep_set_params
    params.require(:rep_set).permit(:exercise_id, :workout_id, :reps, :weight, :training_id)
  end
end
