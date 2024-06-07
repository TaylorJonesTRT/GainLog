module TemplateHelper
    def get_exercise_names(template)
        exercises = Template.find(template.id).exercise_ids

        exercise_names = exercises.map do |exercise|
            Exercise.find_by(id: exercise.id).name
        end

        # exercise_names = []
        # exercises.each do |exercise|
        #   exercise_names << exercise.name
        # end
        exercise_names.join(', ')
    end
end
