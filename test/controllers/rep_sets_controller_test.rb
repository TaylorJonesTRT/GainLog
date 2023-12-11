require "test_helper"

class RepSetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rep_sets_new_url
    assert_response :success
  end

  test "should get create" do
    get rep_sets_create_url
    assert_response :success
  end

  test "should get edit" do
    get rep_sets_edit_url
    assert_response :success
  end

  test "should get update" do
    get rep_sets_update_url
    assert_response :success
  end
end
