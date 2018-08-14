class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update

  end

  def destroy
  end
end

#   def update
#     @restaurant.update(restaurant_params)
#     redirect_to restaurant_path(@restaurant)
#   end

#   def destroy
#     @restaurant.destroy
#     redirect_to restaurants_path
#   end

#   private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :stars)
#   end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
