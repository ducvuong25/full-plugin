class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end

  def form
    @department = Department.new
  end

  def departments
    # @department = Department.new(params.require(:department).permit(:department_name))
    params.permit!
    Department.create(params[:department])
    redirect_to departments_path(project_id: params[:project_id])
  end
end
