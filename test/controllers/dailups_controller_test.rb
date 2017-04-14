require 'test_helper'

class DailupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dailup = dailups(:one)
  end

  test "should get index" do
    get dailups_url
    assert_response :success
  end

  test "should get new" do
    get new_dailup_url
    assert_response :success
  end

  test "should create dailup" do
    assert_difference('Dailup.count') do
      post dailups_url, params: { dailup: { called_at: @dailup.called_at, duration: @dailup.duration, number_called: @dailup.number_called } }
    end

    assert_redirected_to dailup_url(Dailup.last)
  end

  test "should show dailup" do
    get dailup_url(@dailup)
    assert_response :success
  end

  test "should get edit" do
    get edit_dailup_url(@dailup)
    assert_response :success
  end

  test "should update dailup" do
    patch dailup_url(@dailup), params: { dailup: { called_at: @dailup.called_at, duration: @dailup.duration, number_called: @dailup.number_called } }
    assert_redirected_to dailup_url(@dailup)
  end

  test "should destroy dailup" do
    assert_difference('Dailup.count', -1) do
      delete dailup_url(@dailup)
    end

    assert_redirected_to dailups_url
  end
end
