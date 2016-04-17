class EeducationTasksController < ApplicationController
  before_action :set_eeducation_task, only: [:show, :edit, :update, :destroy]

  # GET /eeducation_tasks
  # GET /eeducation_tasks.json
  def index
    @eeducation_tasks = EeducationTask.all
    @eeducation_tasks = current_user.eeducation_tasks
    
  end

  # GET /eeducation_tasks/1
  # GET /eeducation_tasks/1.json
  def show
  end

  # GET /eeducation_tasks/new
  def new
    @eeducation_task = current_user.eeducation_tasks.build
    
  end

  # GET /eeducation_tasks/1/edit
  def edit
  end

  # POST /eeducation_tasks
  # POST /eeducation_tasks.json
  def create
    @eeducation_task = current_user.eeducation_tasks.build(eeducation_task_params)


    respond_to do |format|
      if @eeducation_task.save
        format.html { redirect_to @eeducation_task, notice: 'Eeducation task was successfully created.' }
        format.json { render :show, status: :created, location: @eeducation_task }
      else
        format.html { render :new }
        format.json { render json: @eeducation_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eeducation_tasks/1
  # PATCH/PUT /eeducation_tasks/1.json
  def update
    respond_to do |format|
      if @eeducation_task.update(eeducation_task_params)
        format.html { redirect_to @eeducation_task, notice: 'Eeducation task was successfully updated.' }
        format.json { render :show, status: :ok, location: @eeducation_task }
      else
        format.html { render :edit }
        format.json { render json: @eeducation_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eeducation_tasks/1
  # DELETE /eeducation_tasks/1.json
  def destroy
    @eeducation_task.destroy
    respond_to do |format|
      format.html { redirect_to eeducation_tasks_url, notice: 'Eeducation task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eeducation_task
      @eeducation_task = EeducationTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eeducation_task_params
      params.require(:eeducation_task).permit(:title, :description, :media, :due_date, :complete)
    end
end
