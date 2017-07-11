class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :delete]


  def index
    @department = Department.sorted
  end


  def show
  end


  def new
    @department = Department.new
  end


  def edit
  end


  def create
    @department = Department.new(department_params())

    if @department.save
      # If save succeeds, redirect to the index action
      flash[:notice]="department succeessfully created"
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
  end
end

  def update
    if @department.update_attributes(department_params())
        flash[:notice]="department succeessfully updated"
      redirect_to(:action=>'show',:id=>@department.id)
    else
      render('edit')
    end
  end

  def delete
  end


  def destroy
    department=Department.find(params[:id]).destroy
    flash[:notice]="department succeessfully destroyed"
      redirect_to(:action=>'index')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:did,:dname)
    end

end
