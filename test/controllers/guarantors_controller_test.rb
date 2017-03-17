require 'test_helper'

class GuarantorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guarantor = guarantors(:one)
  end

  test "should get index" do
    get guarantors_url
    assert_response :success
  end

  test "should get new" do
    get new_guarantor_url
    assert_response :success
  end

  test "should create guarantor" do
    assert_difference('Guarantor.count') do
      post guarantors_url, params: { guarantor: { annual_income: @guarantor.annual_income, business: @guarantor.business, fullname: @guarantor.fullname, user_id: @guarantor.user_id } }
    end

    assert_redirected_to guarantor_url(Guarantor.last)
  end

  test "should show guarantor" do
    get guarantor_url(@guarantor)
    assert_response :success
  end

  test "should get edit" do
    get edit_guarantor_url(@guarantor)
    assert_response :success
  end

  test "should update guarantor" do
    patch guarantor_url(@guarantor), params: { guarantor: { annual_income: @guarantor.annual_income, business: @guarantor.business, fullname: @guarantor.fullname, user_id: @guarantor.user_id } }
    assert_redirected_to guarantor_url(@guarantor)
  end

  test "should destroy guarantor" do
    assert_difference('Guarantor.count', -1) do
      delete guarantor_url(@guarantor)
    end

    assert_redirected_to guarantors_url
  end
end
