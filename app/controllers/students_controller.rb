class StudentsController < ApplicationController
  def index
  	@students = Student.all
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)
  	if @student.save
  		flash[:notice] = "You have successfully signed up"
  		redirect_to students_path
  	else
  		render :new
  	end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
     @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "You updated the student record"
      redirect_to @student
    else
      render :edit
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
  	params.require(:student).permit(:name,:email)
  end
  
end