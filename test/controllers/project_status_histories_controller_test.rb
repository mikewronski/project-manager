require "test_helper"

class ProjectStatusHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_status_history = project_status_histories(:one)
  end

  test "should get index" do
    get project_status_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_project_status_history_url
    assert_response :success
  end

  test "should create project_status_history" do
    assert_difference("ProjectStatusHistory.count") do
      post project_status_histories_url, params: { project_status_history: { project_id: @project_status_history.project_id, status: @project_status_history.status, user_id: @project_status_history.user_id } }
    end

    assert_redirected_to project_status_history_url(ProjectStatusHistory.last)
  end

  test "should show project_status_history" do
    get project_status_history_url(@project_status_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_status_history_url(@project_status_history)
    assert_response :success
  end

  test "should update project_status_history" do
    patch project_status_history_url(@project_status_history), params: { project_status_history: { project_id: @project_status_history.project_id, status: @project_status_history.status, user_id: @project_status_history.user_id } }
    assert_redirected_to project_status_history_url(@project_status_history)
  end

  test "should destroy project_status_history" do
    assert_difference("ProjectStatusHistory.count", -1) do
      delete project_status_history_url(@project_status_history)
    end

    assert_redirected_to project_status_histories_url
  end
end
