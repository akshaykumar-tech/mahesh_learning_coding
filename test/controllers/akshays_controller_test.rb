require "test_helper"

class AkshaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @akshay = akshays(:one)
  end

  test "should get index" do
    get akshays_url
    assert_response :success
  end

  test "should get new" do
    get new_akshay_url
    assert_response :success
  end

  test "should create akshay" do
    assert_difference('Akshay.count') do
      post akshays_url, params: { akshay: { age: @akshay.age, name: @akshay.name } }
    end

    assert_redirected_to akshay_url(Akshay.last)
  end

  test "should show akshay" do
    get akshay_url(@akshay)
    assert_response :success
  end

  test "should get edit" do
    get edit_akshay_url(@akshay)
    assert_response :success
  end

  test "should update akshay" do
    patch akshay_url(@akshay), params: { akshay: { age: @akshay.age, name: @akshay.name } }
    assert_redirected_to akshay_url(@akshay)
  end

  test "should destroy akshay" do
    assert_difference('Akshay.count', -1) do
      delete akshay_url(@akshay)
    end

    assert_redirected_to akshays_url
  end
end
