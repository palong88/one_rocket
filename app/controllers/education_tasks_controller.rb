class EducationTasksController < ApplicationController
  before_action :set_education_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /education_tasks
  # GET /education_tasks.json
  def index
    @education_tasks = EducationTask.all
    @education_tasks = current_user.education_tasks


  end

  # GET /education_tasks/1
  # GET /education_tasks/1.json
  def show
  end

  # GET /education_tasks/new
  def new
    @education_task = current_user.education_tasks.build
  end

  # GET /education_tasks/1/edit
  def edit
  end

  # POST /education_tasks
  # POST /education_tasks.json
  def create
    @education_task = current_user.education_tasks.build(education_task_params)

    respond_to do |format|
      if @education_task.save
        format.html { redirect_to @education_task, notice: 'Education task was successfully created.' }
        format.json { render :show, status: :created, location: @education_task }
      else
        format.html { render :new }
        format.json { render json: @education_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_tasks/1
  # PATCH/PUT /education_tasks/1.json
  def update
    respond_to do |format|
      if @education_task.update(education_task_params)
        format.html { redirect_to @education_task, notice: 'Education task was successfully updated.' }
        format.json { render :show, status: :ok, location: @education_task }
      else
        format.html { render :edit }
        format.json { render json: @education_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_tasks/1
  # DELETE /education_tasks/1.json
  def destroy
    @education_task.destroy
    respond_to do |format|
      format.html { redirect_to education_tasks_url, notice: 'Education task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_task
      @education_task = EducationTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_task_params
      params.require(:education_task).permit(:title, :description, :media, :due_date)
    end
end
