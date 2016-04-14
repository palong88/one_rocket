require 'test_helper'

class ScheduleTasksControllerTest < ActionController::TestCase
  setup do
    @schedule_task = schedule_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_task" do
    assert_difference('ScheduleTask.count') do
      post :create, schedule_task: { description: @schedule_task.description, due_date: @schedule_task.due_date, media: @schedule_task.media, title: @schedule_task.title }
    end

    assert_redirected_to schedule_task_path(assigns(:schedule_task))
  end

  test "should show schedule_task" do
    get :show, id: @schedule_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_task
    assert_response :success
  end

  test "should update schedule_task" do
    patch :update, id: @schedule_task, schedule_task: { description: @schedule_task.description, due_date: @schedule_task.due_date, media: @schedule_task.media, title: @schedule_task.title }
    assert_redirected_to schedule_task_path(assigns(:schedule_task))
  end

  test "should destroy schedule_task" do
    assert_difference('ScheduleTask.count', -1) do
      delete :destroy, id: @schedule_task
    end

    assert_redirected_to schedule_tasks_path
  end
end
