class coursesController < ApplicationController
   def index
     @courses = course.all
   end

   def show
     @course = course.find(params[:id])
   end

   def new
     @course = course.new
   end

   def edit
     @course = course.find(params[:id])
   end

   def create
    @course = course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end
end
def destroy
    @course = course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

  private
    def course_params
      params.require(:course).permit(:name, :register_number,:status)
    end
end
