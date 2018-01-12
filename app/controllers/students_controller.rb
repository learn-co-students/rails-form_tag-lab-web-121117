class StudentsController < ApplicationController

  # INDEX - list of all students
  # GET HTTP verb
  def index
    @students = Student.all
  end

  # SHOW - individual student
  # GET - HTTP verb
  def show
    @student = Student.find(params[:id])
  end

  # NEW - shows a create-form
  # GET - HTTP verb
  def new
    #@student = Student.find(params[:id])
  end

  # CREATE - the action that a create-form triggers
  # use redirect
  # byebug into it to test .create method
  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to @student
  end

end
