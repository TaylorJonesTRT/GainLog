class Workout < ApplicationRecord
    belongs_to :user

    has_many :trainings
    has_many :rep_sets

    alias_attribute :start_time, :created_at

    before_save do |workout|
        if workout.template_id
            template_name = Template.find(template_id).name
            workout.name = "#{template_name} Workout"
        else
            workout.name = "#{determine_workout_name} Workout"
        end
    end

    private

    def determine_workout_name
        hour = Time.zone.now.localtime.hour

        if hour.between?(0, 4) || hour.between?(21, 24)
            'Night'
        elsif hour.between?(5, 11)
            'Morning'
        elsif hour.between?(12, 16)
            'Afternoon'
        elsif hour.between?(17, 20)
            'Evening'
        end
    end
end
