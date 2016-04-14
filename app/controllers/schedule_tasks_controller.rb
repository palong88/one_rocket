class ScheduleTasksController < ApplicationController
  before_action :set_schedule_task, only: [:show, :edit, :update, :destroy]

  # GET /schedule_tasks
  # GET /schedule_tasks.json
  def index
    @schedule_tasks = ScheduleTask.all
  end

  # GET /schedule_tasks/1
  # GET /schedule_tasks/1.json
  def show
  end

  # GET /schedule_tasks/new
  def new
    @schedule_task = ScheduleTask.new
  end

  # GET /schedule_tasks/1/edit
  def edit
  end

  # POST /schedule_tasks
  # POST /schedule_tasks.json
  def create
    @schedule_task = ScheduleTask.new(schedule_task_params)

    respond_to do |format|
      if @schedule_task.save
        format.html { redirect_to @schedule_task, notice: 'Schedule task was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_task }
      else
        format.html { render :new }
        format.json { render json: @schedule_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_tasks/1
  # PATCH/PUT /schedule_tasks/1.json
  def update
    respond_to do |format|
      if @schedule_task.update(schedule_task_params)
        format.html { redirect_to @schedule_task, notice: 'Schedule task was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_task }
      else
        format.html { render :edit }
        format.json { render json: @schedule_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_tasks/1
  # DELETE /schedule_tasks/1.json
  def destroy
    @schedule_task.destroy
    respond_to do |format|
      format.html { redirect_to schedule_tasks_url, notice: 'Schedule task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_task
      @schedule_task = ScheduleTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_task_params
      params.require(:schedule_task).permit(:title, :description, :media, :due_date)
    end
end
