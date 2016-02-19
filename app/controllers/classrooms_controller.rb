
class ClassroomsController < ApplicationController

  def index

  end

  def new
    @classroom =  Classroom.new
    @student = Student.find(params[:student_id])
    @courses = Course.all()
  end
  def create
   @courses = Course.all()
   @student = Student.find(params[:student_id])
   @classroom = @student.classrooms.build(classroom_params)
   if @classroom.save
     redirect_to @student
   else
     render 'new'
   end
 end

  private
    def classroom_params
      params.require(:classroom).permit(:entry_at , :course_id)
    end
end
