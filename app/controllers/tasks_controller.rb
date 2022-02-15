class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # render index.html.erb
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    # this empty instance is so the form can build
    @task = Task.new
  end

  def add
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      # if the task doesn save, what should happen?
      # show the form again, what page was the form on?
      render 'new.html.erb'
    end
  end

  def edit
    # # this instance is so the form can build
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    # if @task.update(task_params)
    #   redirect_to task_path(@task)
    # else
    #   # if it doesnt update, show the form again
    #   render 'edit.html.erb'
    # end
  end

  def destroy
    # # get the instance
    # @task = Task.find(params[:id])
    # # destroy the instance
    # @task.destroy
    # # redirect somewhere
    # redirect_to tasks_path
  end

  private

  def task_params
    # params.require(:task).permit(:name, :details, :completed)
  end
end
