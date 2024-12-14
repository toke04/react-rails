require "test_helper"

class TestTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_type = test_types(:one)
  end

  test "should get index" do
    get test_types_url
    assert_response :success
  end

  test "should get new" do
    get new_test_type_url
    assert_response :success
  end

  test "should create test_type" do
    assert_difference("TestType.count") do
      post test_types_url, params: { test_type: { status: @test_type.status } }
    end

    assert_redirected_to test_type_url(TestType.last)
  end

  test "should show test_type" do
    get test_type_url(@test_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_type_url(@test_type)
    assert_response :success
  end

  test "should update test_type" do
    patch test_type_url(@test_type), params: { test_type: { status: @test_type.status } }
    assert_redirected_to test_type_url(@test_type)
  end

  test "should destroy test_type" do
    assert_difference("TestType.count", -1) do
      delete test_type_url(@test_type)
    end

    assert_redirected_to test_types_url
  end
end
