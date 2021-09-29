require "test_helper"

class ArticiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articicle = articicles(:one)
  end

  test "should get index" do
    get articicles_url
    assert_response :success
  end

  test "should get new" do
    get new_articicle_url
    assert_response :success
  end

  test "should create articicle" do
    assert_difference('Articicle.count') do
      post articicles_url, params: { articicle: { body: @articicle.body, tile: @articicle.tile } }
    end

    assert_redirected_to articicle_url(Articicle.last)
  end

  test "should show articicle" do
    get articicle_url(@articicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_articicle_url(@articicle)
    assert_response :success
  end

  test "should update articicle" do
    patch articicle_url(@articicle), params: { articicle: { body: @articicle.body, tile: @articicle.tile } }
    assert_redirected_to articicle_url(@articicle)
  end

  test "should destroy articicle" do
    assert_difference('Articicle.count', -1) do
      delete articicle_url(@articicle)
    end

    assert_redirected_to articicles_url
  end
end
