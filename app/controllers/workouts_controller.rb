class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def show
    @workout = current_user.workouts.find_by(id: params[:id])
    @workout_trainings = @workout.trainings.all

    workout_hash = {
      'id' => @workout.id,
      'created_at' => @workout.created_at,
      'user_id' => @workout.user_id,
      'trainings' => []
    }

    @workout_trainings.each do |training|
      hash = {
        'name' => nil,
        'training_id' => nil,
        'exercise_id' => nil,
        'rep_sets' => nil
      }
      training_rep_sets = @workout.rep_sets.all.select { |m| m.training_id == training.id }
      puts training_rep_sets
      exercise = Exercise.find_by(id: training.exercise_id)
      hash['rep_sets'] = training_rep_sets
      hash['training_id'] = training.id
      hash['name'] = exercise.name
      hash['exercise_id'] = exercise.id
      workout_hash['trainings'].push(hash)
    end
  end

  def new
    @workout = current_user.workouts.build
  end

  def create
    puts 'hello'
    puts params
    # workout_params[:exercises].each do |exercise|
    # end
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
