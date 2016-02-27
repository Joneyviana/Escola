
class ClassroomsController < ApplicationController
  before_action :get_person , only: [:new , :create]
  def index

  end

  def new
    @classroom =  Classroom.new
    @courses = Course.all()
  end
  def create
   @courses = Course.all()
   @classroom = @person.classrooms.build(classroom_params)
   if @classroom.save
     redirect_to @person
   else
     render 'new'
   end
 end

 private
   def get_person
     if params.has_key?(:student_id)
       @person = Student.find(params[:student_id])
     else
       @person = Professor.find(params[:professor_id])
    end
  end

  private
    def classroom_params
      params.require(:classroom).permit(:entry_at , :course_id)
    end
end
