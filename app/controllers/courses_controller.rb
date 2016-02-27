class CoursesController < ApplicationController
  def index
    @courses = Course.eager_load(:students ,:professors )
  end

  def show
    @course = Course.find(params[:id])
end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
   @course = Course.new(course_params)
   if @course.save
     redirect_to @course
   else
     render 'new'
   end
  end

  def update
  @course = Course.find(params[:id])

  if @course.update(course_params)
    redirect_to @course
  else
    redirect_to back
  end
end

  def checkName
    @name = params[:name]
    @course = Course.where(name:@name).first
    respond_to do |format|
    format.json {
        render json: {:course => @course}
     }
     end
  end
  def destroy
   @course = Course.find(params[:id])
   @course.destroy

   redirect_to courses_path
  end

  private
   def course_params
     params.require(:course).permit(:name, :description,:status)
   end
  end
