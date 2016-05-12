class EadminTasksController < ApplicationController
  
  before_action :set_eadmin_task, only: [:show, :edit, :update, :destroy]


  # GET /eadmin_tasks
  # GET /eadmin_tasks.json
  def index
    
    @employees = Employee.all
    @eadmin_tasks = EadminTask.all
    @eadmin_tasks = current_user.eadmin_tasks


    
  end

  # GET /admin_tasks/1
  # GET /admin_tasks/1.json
  def show
  end

  # GET /admin_tasks/new
  def new
  
    @eadmin_task = current_user.eadmin_tasks.build
  end

  # GET /eadmin_tasks/1/edit
  def edit
  end

  # POST /eadmin_tasks
  # POST /eadmin_tasks.json
  def create
    @eadmin_task = current_user.eadmin_tasks.build(eadmin_task_params)


    respond_to do |format|
      if @eadmin_task.save
        format.html { redirect_to @eadmin_task, notice: 'EAdmin task was successfully created.' }
        format.json { render :show, status: :created, location: @eadmin_task }
      else
        format.html { render :new }
        format.json { render json: @eadmin_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_tasks/1
  # PATCH/PUT /admin_tasks/1.json
  def update
    respond_to do |format|
      if @eadmin_task.update(eadmin_task_params)
        format.html { redirect_to @eadmin_task, notice: 'EAdmin task was successfully updated.' }
        format.json { render :show, status: :ok, location: @eadmin_task }
      else
        format.html { render :edit }
        format.json { render json: @eadmin_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_tasks/1
  # DELETE /admin_tasks/1.json
  def destroy
    @eadmin_task.destroy
    respond_to do |format|
      format.html { redirect_to eadmin_tasks_url, notice: 'eAdmin task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eadmin_task
      @eadmin_task = EadminTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eadmin_task_params
      params.require(:eadmin_task).permit(:title, :description, :media, :due_date)
    end
end
