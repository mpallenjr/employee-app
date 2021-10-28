class EmployeesController < ApplicationController
  def create
    employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      department_id: params[:department_id]
    )
    employee.save
    render json: employee.as_json
  end

  def index
    all_employees = Employee.all 
    render json: all_employees.as_json 
  end

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def destroy
    employee = Employee.find(params[:id])
    employee.destroy
  end
end
