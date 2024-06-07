class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
        @recent_workouts = current_user.workouts.order(id: :asc).last(3)
        @templates = current_user.templates.order(created_at: :desc).last(4)
    end
end
