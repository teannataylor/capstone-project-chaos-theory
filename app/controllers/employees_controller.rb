class EmployeesController < ApplicationController

    # skip_before_action :authorize, only: [:index, :show]

def index
    employees = Employee.all
    render json: employees
end

def create
    employee = Employee.create!(employee_params)
    session[:employee_id] = employee.id
    render json: employee, status: :created
end 

def show
    employee = Employee.find_by(id: params[:id])
    render json: employee
  end



end
