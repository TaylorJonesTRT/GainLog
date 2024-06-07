module HomeHelper
    def format_exercise_names(workout, template)
        exercise_ids = []
        if template.present?
            template.exercise_ids.each { |id| exercise_ids << id }
        else
            trainings = Workout.find(workout.id).trainings
            trainings.each { |training| exercise_ids << training.exercise_id }
        end

        exercise_names = exercise_ids.map do |id|
            Exercise.find(id).name
        end

        exercise_names.join(', ')
    end
end
