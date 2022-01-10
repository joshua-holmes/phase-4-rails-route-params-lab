class StudentsController < ApplicationController

  def index
    name = params[:name]
    if name
      students = Student.all.filter { |s| s.first_name.downcase == name || s.last_name.downcase == name }
    else
      students = Student.all
    end
    render json: students
  end
  def show
    student = Student.find params[:id]
    render json: student
  end

end
