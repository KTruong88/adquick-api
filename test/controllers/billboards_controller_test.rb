require 'test_helper'

class BillboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billboard = billboards(:one)
  end

  test "should get index" do
    get billboards_url, as: :json
    assert_response :success
  end

  test "should create billboard" do
    assert_difference('Billboard.count') do
      post billboards_url, params: { billboard: { image: @billboard.image, name: @billboard.name } }, as: :json
    end

    assert_response 201
  end

  test "should show billboard" do
    get billboard_url(@billboard), as: :json
    assert_response :success
  end

  test "should update billboard" do
    patch billboard_url(@billboard), params: { billboard: { image: @billboard.image, name: @billboard.name } }, as: :json
    assert_response 200
  end

  test "should destroy billboard" do
    assert_difference('Billboard.count', -1) do
      delete billboard_url(@billboard), as: :json
    end

    assert_response 204
  end
end
