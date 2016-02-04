class ClassroomsController < ApplicationController

  def index
     
  end

  def new
    @classroom =  Classroom.new
    @student = Student.find(params[:id])
    @courses = Course.all()
  end
  def create
   @classroom = Classroom.new(classroom_params)

   if @classroom.save
     redirect_to Student.find(classroom_params[:student_id])
   else
     render 'new'
   end
 end

  private
    def classroom_params
      params.require(:classroom).permit(:entry_at , :course_id , :student_id)
    end
end
