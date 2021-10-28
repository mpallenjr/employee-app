class DepartmentsController < ApplicationController
  def create
    department = Department.new(
      name: params[:name],
      manager: params[:manager],
      department_code: params[:department_code]
    )
    department.save
    render json: department.as_json
  end

  def index
    all_departments = Department.all 
    render json: all_departments.as_json 
  end

  def show
    department = Department.find_by(id: params[:id])
    render json: department.as_json
  end

  def destroy
    department = Department.find(params[:id])
    department.destroy
  end

  def update
    department = Department.find(params[:id])
    department.name = params[:name] || department.name
    department.manager = params[:manager] || department.manager
    department.department_code = params[:department_code] || department.department_code
    department.save
    render json: department.as_json 
  end
end
