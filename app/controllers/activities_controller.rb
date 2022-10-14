class ActivitiesController < ApplicationController
  before_action :fetch_category, only: %i[index show new]

  def index
    @activities = @category ? @category.activities.order('created_at DESC') : Activity.all
    @total = @category.activities.sum('amount') if @category
  end

  def new
    @activity = Activity.new
    @activity.category_ids = [@category.id] if @category
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.author = current_user
    @activity.category_ids = activity_params[:category_ids]

    if @activity.save
      redirect_to root_path, notice: 'Activity created successfully!'
    else
      render :new, status: 422
    end
  end

  private

  def fetch_category
    return nil unless params[:category_id]

    @category = Category.find(params[:category_id])
  end

  def activity_params
    params.require(:activity).permit(:name, :amount, category_ids: [])
  end
end
