class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end

  def form
    @department = Department.new
    @projects = Project.all
  end

  def departments
    # @department = Department.new(params.require(:department).permit(:department_name))
    params.permit!
    Department.create(params[:department])
    redirect_to departments_path(project_id: params[:project_id])
  end

  def delete
    department = Department.find(params[:dpm_id])  
    department.destroy
    redirect_to departments_path(project_id: params[:project_id])
  end

  def update
    @department = Department.find(params[:dpm_id])
    render 'form'
    
  end
end
