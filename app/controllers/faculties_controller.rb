class FacultiesController < ApplicationController
  before_action :set_faculty, only: [:show, :edit, :update, :delete]


  def index
    @faculty = Faculty.sorted
  end


  def show
  end


  def new
    @faculty = Faculty.new
  end


  def edit
  end


  def create
    @faculty = Faculty.new(faculty_params())

    if @faculty.save
      # If save succeeds, redirect to the index action
      flash[:notice]="Faculty succeessfully created"
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
  end
end

  def update
    if @faculty.update_attributes(faculty_params())
        flash[:notice]="Faculty succeessfully updated"
      redirect_to(:action=>'show',:id=>@faculty.id)
    else
      render('edit')
    end
  end

  def delete
  end


  def destroy
    faculty=Faculty.find(params[:id]).destroy
    flash[:notice]="Faculty succeessfully destroyed"
      redirect_to(:action=>'index')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_params
      params.require(:faculty).permit(:fid,:fname)
    end

end
