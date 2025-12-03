class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workout, only: %i[ show update destroy ]

  def index
    if params[:limit].present? && params[:page].blank? && params[:per_page].blank?
      limit = [ params[:limit].to_i, 50 ].min # Cap at 50
      @workouts = current_user.workouts
        .includes(workout_sets: :exercise)
        .order(created_at: :desc)
        .limit(limit)

      render json: @workouts.as_json(include: {
        workout_sets: {
          include: :exercise
        }
      })
      return
    end

    page = params[:page]&.to_i || 1
    per_page = params[:per_page]&.to_i || 10

    puts "params"
    puts params[:limit]

    page = 1 if page < 1
    per_page = [ per_page, 50 ].min

    offset = (page - 1) * per_page

    total_count = current_user.workouts.count
    total_pages = (total_count.to_f / per_page).ceil

    @workouts = current_user.workouts
      .includes(workout_sets: :exercise)
      .order(created_at: :desc)
      .limit(per_page)
      .offset(offset)

    render json: {
      workouts: @workouts.as_json(include: {
        workout_sets: {
          include: :exercise
        }
      }),
      pagination: {
        current_page: page,
        per_page: per_page,
        total_count: total_count,
        total_pages: total_pages,
        has_next_page: page < total_pages,
        has_prev_page: page > 1
      }
    }

    # @workouts = current_user.workouts.includes(workout_sets: :exercise).order(created_at: :desc)
    #
    # @workouts = @workouts.limit(params[:limit].to_i) if params[:limit].present?
    #
    # render json: @workouts.as_json(
    #   only: [ :id, :title, :created_at, :completed_at ],
    #   include: {
    #     workout_sets: {
    #       only: [ :id ],
    #       include: {
    #         exercise: {
    #           only: [ :name ]
    #         }
    #       }
    #     }
    #   }
    # )
  end

  def show
    @workout = current_user.workouts.find(params[:id])

    render json: @workout.as_json(only: [ :id, :user_id, :title, :created_at, :updated_at, :completed_at ]).merge(
      workout_sets: @workout.ordered_workout_sets.as_json(
        include: {
          exercise: {
            only: [ :id, :name ]
          }
        }
      )
    )
  end

  def create
    @workout = current_user.workouts.build(workout_params)

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_content
    end
  end

  def update
    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_content
    end
  end

  def destroy
    @workout.destroy!
    head :no_content
  end

  private

  def set_workout
    @workout = current_user.workouts.includes(workout_sets: :exercise).find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:title, :completed_at, exercise_ids: [])
  end
end
