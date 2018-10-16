class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    session[:form_params] = params.inspect
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
