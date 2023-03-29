require "application_system_test_case"

class ProjectStatusHistoriesTest < ApplicationSystemTestCase
  setup do
    @project_status_history = project_status_histories(:one)
  end

  test "visiting the index" do
    visit project_status_histories_url
    assert_selector "h1", text: "Project status histories"
  end

  test "should create project status history" do
    visit project_status_histories_url
    click_on "New project status history"

    fill_in "Project", with: @project_status_history.project_id
    fill_in "Status", with: @project_status_history.status
    fill_in "User", with: @project_status_history.user_id
    click_on "Create Project status history"

    assert_text "Project status history was successfully created"
    click_on "Back"
  end

  test "should update Project status history" do
    visit project_status_history_url(@project_status_history)
    click_on "Edit this project status history", match: :first

    fill_in "Project", with: @project_status_history.project_id
    fill_in "Status", with: @project_status_history.status
    fill_in "User", with: @project_status_history.user_id
    click_on "Update Project status history"

    assert_text "Project status history was successfully updated"
    click_on "Back"
  end

  test "should destroy Project status history" do
    visit project_status_history_url(@project_status_history)
    click_on "Destroy this project status history", match: :first

    assert_text "Project status history was successfully destroyed"
  end
end
