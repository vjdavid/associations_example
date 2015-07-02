class PeopleController < ApplicationController

  before_action :find_person, only: [:show, :get_tasks]
  before_action :find_tasks, only: [:get_tasks]

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

  private

  def person_params
    params.permit(:name)
  end

  def find_person
    @person = Person.find(params[:id])
  end

  def find_tasks
    @tasks = @person.tasks
  end

end
