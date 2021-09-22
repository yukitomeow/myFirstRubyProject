require "test_helper"

class WeightHistory2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weight_history2 = weight_history2s(:one)
  end

  test "should get index" do
    get weight_history2s_url
    assert_response :success
  end

  test "should get new" do
    get new_weight_history2_url
    assert_response :success
  end

  test "should create weight_history2" do
    assert_difference('WeightHistory2.count') do
      post weight_history2s_url, params: { weight_history2: { memo: @weight_history2.memo, user_id: @weight_history2.user_id, weight: @weight_history2.weight } }
    end

    assert_redirected_to weight_history2_url(WeightHistory2.last)
  end

  test "should show weight_history2" do
    get weight_history2_url(@weight_history2)
    assert_response :success
  end

  test "should get edit" do
    get edit_weight_history2_url(@weight_history2)
    assert_response :success
  end

  test "should update weight_history2" do
    patch weight_history2_url(@weight_history2), params: { weight_history2: { memo: @weight_history2.memo, user_id: @weight_history2.user_id, weight: @weight_history2.weight } }
    assert_redirected_to weight_history2_url(@weight_history2)
  end

  test "should destroy weight_history2" do
    assert_difference('WeightHistory2.count', -1) do
      delete weight_history2_url(@weight_history2)
    end

    assert_redirected_to weight_history2s_url
  end
end
