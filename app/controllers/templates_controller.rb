class TemplatesController < ApplicationController
    before_action :authenticate_user!

    def index
        @templates = current_user.templates.order(created_at: :desc)
        @template_exercises = {}

        @templates.each do |template|
            names = []
            template.exercise_ids.each do |exercise_id|
                names << current_user.exercises.find_by(id: exercise_id).name
            end
            @template_exercises[template.id] = names.join(', ')
        end
    end

    def new
        @template = current_user.templates.build
    end

    def edit
        @template = current_user.templates.find(params[:id])
    end

    def create
        @template = current_user.templates.build(template_params)

        if @template.save
            redirect_to templates_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update
        @template = current_user.templates.find(params[:id])

        if @template.update(template_params)
            redirect_to templates_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def template_params
        params.require(:template).permit(:name, exercise_ids: [])
    end
end
