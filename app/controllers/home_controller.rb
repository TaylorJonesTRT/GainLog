require 'pp'

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @recent_workouts = current_user.workouts.order(id: :asc).last(3)
    pp @recent_workouts
  end
end
