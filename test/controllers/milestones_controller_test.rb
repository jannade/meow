require 'test_helper'

class MilestonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get milestones_index_url
    assert_response :success
  end

  test "should get show" do
    get milestones_show_url
    assert_response :success
  end

  test "should get new" do
    get milestones_new_url
    assert_response :success
  end

  test "should get create" do
    get milestones_create_url
    assert_response :success
  end

  test "should get edit" do
    get milestones_edit_url
    assert_response :success
  end

  test "should get update" do
    get milestones_update_url
    assert_response :success
  end

  test "should get destroy" do
    get milestones_destroy_url
    assert_response :success
  end

end
