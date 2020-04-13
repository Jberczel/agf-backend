require 'test_helper'

class GuitarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar = guitars(:one)
  end

  test "should get index" do
    get guitars_url, as: :json
    assert_response :success
  end

  test "should create guitar" do
    assert_difference('Guitar.count') do
      post guitars_url, params: { guitar: { author: @guitar.author, last_post: @guitar.last_post, link: @guitar.link, replies: @guitar.replies, title: @guitar.title, views: @guitar.views } }, as: :json
    end

    assert_response 201
  end

  test "should show guitar" do
    get guitar_url(@guitar), as: :json
    assert_response :success
  end

  test "should update guitar" do
    patch guitar_url(@guitar), params: { guitar: { author: @guitar.author, last_post: @guitar.last_post, link: @guitar.link, replies: @guitar.replies, title: @guitar.title, views: @guitar.views } }, as: :json
    assert_response 200
  end

  test "should destroy guitar" do
    assert_difference('Guitar.count', -1) do
      delete guitar_url(@guitar), as: :json
    end

    assert_response 204
  end
end
