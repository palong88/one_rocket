require 'test_helper'

class EducationTasksControllerTest < ActionController::TestCase
  setup do
    @education_task = education_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_task" do
    assert_difference('EducationTask.count') do
      post :create, education_task: { description: @education_task.description, due_date: @education_task.due_date, media: @education_task.media, title: @education_task.title }
    end

    assert_redirected_to education_task_path(assigns(:education_task))
  end

  test "should show education_task" do
    get :show, id: @education_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @education_task
    assert_response :success
  end

  test "should update education_task" do
    patch :update, id: @education_task, education_task: { description: @education_task.description, due_date: @education_task.due_date, media: @education_task.media, title: @education_task.title }
    assert_redirected_to education_task_path(assigns(:education_task))
  end

  test "should destroy education_task" do
    assert_difference('EducationTask.count', -1) do
      delete :destroy, id: @education_task
    end

    assert_redirected_to education_tasks_path
  end
end
