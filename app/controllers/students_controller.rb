class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.last
  end

  def create
    # byebug
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to @student
  end

end
