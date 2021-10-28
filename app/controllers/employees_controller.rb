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
end