require 'test_helper'

class EeducationTasksControllerTest < ActionController::TestCase
  setup do
    @eeducation_task = eeducation_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eeducation_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eeducation_task" do
    assert_difference('EeducationTask.count') do
      post :create, eeducation_task: { complete: @eeducation_task.complete, description: @eeducation_task.description, due_date: @eeducation_task.due_date, media: @eeducation_task.media, title: @eeducation_task.title }
    end

    assert_redirected_to eeducation_task_path(assigns(:eeducation_task))
  end

  test "should show eeducation_task" do
    get :show, id: @eeducation_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eeducation_task
    assert_response :success
  end

  test "should update eeducation_task" do
    patch :update, id: @eeducation_task, eeducation_task: { complete: @eeducation_task.complete, description: @eeducation_task.description, due_date: @eeducation_task.due_date, media: @eeducation_task.media, title: @eeducation_task.title }
    assert_redirected_to eeducation_task_path(assigns(:eeducation_task))
  end

  test "should destroy eeducation_task" do
    assert_difference('EeducationTask.count', -1) do
      delete :destroy, id: @eeducation_task
    end

    assert_redirected_to eeducation_tasks_path
  end
end
