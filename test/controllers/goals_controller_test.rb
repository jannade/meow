require 'test_helper'

class GoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goals_index_url
    assert_response :success
  end

  test "should get show" do
    get goals_show_url
    assert_response :success
  end

  test "should get new" do
    get goals_new_url
    assert_response :success
  end

  test "should get create" do
    get goals_create_url
    assert_response :success
  end

  test "should get edit" do
    get goals_edit_url
    assert_response :success
  end

  test "should get update" do
    get goals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get goals_destroy_url
    assert_response :success
  end

end
