module HomeHelper
  def format_exercise_names(workout)
    exercise_names = []
    trainings = Workout.find(workout.id).trainings

    trainings.each do |training|
      exercise_names << Exercise.find_by(id: training.exercise_id).name
    end

    # exercise_names = []
    # exercises.each do |exercise|
    #   exercise_names << exercise.name
    # end
    exercise_names.join(', ')
  end
end
