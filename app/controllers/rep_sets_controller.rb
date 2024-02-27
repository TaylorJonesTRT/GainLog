class RepSetsController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def show; end

  def create
    puts params
    puts repset_params
    workout_id = repset_params[:workout_id]
    training_id = repset_params[:training_id]
    exercise_id = repset_params[:exercise_id]

    @rep_set = RepSet.build(workout_id:, training_id:, exercise_id:)

    if @rep_set.save
      update_rep_sets_list(workout_id, training_id)
    else
      render edit_workout_path(id: workout_id), status: :unprocessable_entity
    end
  end

  private

  def repset_params
    params.require(:rep_set).permit(:training_id, :workout_id, :exercise_id)
  end

  def update_rep_sets_list(workout_id, training_id)
    @workout = Workout.find(workout_id)
    @workout_trainings = @workout.trainings.order(id: :asc)
    @training = Training.find(training_id)
    render turbo_stream: turbo_stream.replace('rep_set_list', partial: 'workouts/rep_set_list',
                                                              locals: { workout_trainings: @workout_trainings, workout: @workout, training: @training })
  end
end
