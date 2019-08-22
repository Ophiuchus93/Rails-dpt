require 'test_helper'

class DepartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departs_index_url
    assert_response :success
  end

  test "should get show" do
    get departs_show_url
    assert_response :success
  end

  test "should get new" do
    get departs_new_url
    assert_response :success
  end

  test "should get edit" do
    get departs_edit_url
    assert_response :success
  end

end
