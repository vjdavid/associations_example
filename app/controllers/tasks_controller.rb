class TasksController < ApplicationController

  before_action :find_task, only: [:show, :get_people]
  before_action :get_person, only: [:get_people]
  before_action :find_person, only: [:update_people, :patch_update_people]

  def get_people
    render json: @get_all
  end

  def show
    render json: @task
  end

  def update_people
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors
    end
  end

  def patch_update_people
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors
    end
  end

  private

  def person_params
    params.permit(:name)
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def find_person
    @person = Person.find(params[:id])
  end

  def get_person
    @get_all = @task.people
  end

end
