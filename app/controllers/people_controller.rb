class PeopleController < ApplicationController

  before_action :find_person, only: [:show, :get_tasks]
  before_action :find_tasks, only: [:get_tasks]
  before_action :find_task, only: [:update_tasks, :patch_update_tasks]

  def index
    @people = Person.all

    render json: @people
  end

  def get_tasks
    render json: @tasks
  end

  def show
    render json: @person
  end

  def update_tasks
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors
    end
  end

  def patch_update_tasks
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors
    end
  end

  private

  def person_params
    params.permit(:name)
  end

  def task_params
    params.permit(:name, :description)
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def find_person
    @person = Person.find(params[:id])
  end

  def find_tasks
    @tasks = @person.tasks
  end

end
