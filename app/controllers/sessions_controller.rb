class SessionsController < ApplicationController
 

    def create
        employee = Employee.find_by(username: params[:username])
        if employee&.authenticate(params[:password])
          session[:employee_id] = employee.id
          render json: employee, status: :created
        else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
      end

    def destroy
        session.delete :employee_id
        head :no_content
    end

    private
    def authorize
        return render json: { errors: "Not Authorized" }, status: :unauthorized unless session.include?(:employee_id)
      end

end