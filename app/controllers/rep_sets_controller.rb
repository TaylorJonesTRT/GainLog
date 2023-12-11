class RepSetsController < ApplicationController
  before_action :set_rep_set, only: %i[index destroy show edit update]

  def index; end

  def new
    @rep_set = RepSet.new
    puts "helloooooooooo"
  end

  def create
    puts "hello"
  end
  end

  def edit; end

  def update; end

  private

  def set_rep_set
    @rep_set = RepSet.find(params[:id])
  end
end
