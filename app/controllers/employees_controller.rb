class EmployeesController < ApplicationController
    before_action :authenticate_user!
    
 
    load_and_authorize_resource
  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(employee_params)
    @eadmin_tasks = AdminTask.all
    if @employee.save
      redirect_to @employee, :flash => { :success => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update_attributes(employee_params)
      sign_in(@employee, :bypass => true) if @employee == current_employee
      redirect_to @employee, :flash => { :success => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path, :flash => { :success => 'User was successfully deleted.' }
  end

  private
    def employee_params
      params.require(:employee).permit(:email, :password, :password_confirmation, :name, :start_date)
    end
end