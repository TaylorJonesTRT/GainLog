class WorkoutsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_workout, only: [:show, :edit]

    def index
        start_date = params.fetch(:start_date, Time.zone.today).to_date
        @workouts = Workout.where(created_at: (start_date.beginning_of_day)..((start_date + 2).end_of_day))
    end

    def show
        @trainings = Training.where(workout_id: @workout).all
        @templates = current_user.templates.all
        @previous_template_workout = Workout.where(created_at: ...@workout.created_at).last
    end

    def new
        @workout = current_user.workouts.build
    end

    def edit
        @workout_trainings = @workout.trainings.order(id: :asc)
    end

    def create
        if params[:template_id]
            @workout = current_user.workouts.build(user_id: current_user.id, template_id: params[:template_id])
            exercises = current_user.templates.find(params[:template_id]).exercise_ids
        else
            @workout = current_user.workouts.build(user_id: current_user.id)
            exercises = workout_params[:exercises]
        end

        if @workout.save
            create_trainings(exercises)
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

    def set_workout
        @workout = current_user.workouts.find(params[:id])
    end

    def create_trainings(exercise_ids)
        exercise_ids.each do |exercise|
            @training = Training.create(workout_id: @workout.id, exercise_id: exercise)
            if @training.save
                RepSet.create(workout_id: @workout.id, exercise_id: exercise, training_id: @training.id, reps: nil,
                              weight: nil)
            else
                render :new, status: :unprocessable_entity
            end
        end
    end

end
