class CoursesController < ApplicationController

  before_action :set_course, only: [:show, :edit, :update, :delete]
  before_action :authenticate_user!


  def index
    @course = Course.sorted
  end


  def show
  end


  def new
    @course = Course.new
  end


  def edit
  end


  def create
    @course = Course.new(course_params())

    if @course.save
      # If save succeeds, redirect to the index action
      flash[:notice]="Course succeessfully created"
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
  end
end

  def update
    if @course.update_attributes(course_params())
        flash[:notice]="Course succeessfully updated"
      redirect_to(:action=>'show',:id=>@course.id)
    else
      render('edit')
    end
  end

  def delete
  end


  def destroy
    course=Course.find(params[:id]).destroy
    flash[:notice]="Course successfully destroyed"
      redirect_to(:action=>'index')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:cid,:cname,:grade_point,:max_students,:min_students)
    end

end
