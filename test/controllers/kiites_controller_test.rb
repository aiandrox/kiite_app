require 'test_helper'

class KiitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kiites_index_url
    assert_response :success
  end

  test "should get new" do
    get kiites_new_url
    assert_response :success
  end

  test "should get edit" do
    get kiites_edit_url
    assert_response :success
  end

end
