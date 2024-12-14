require "application_system_test_case"

class TestTypesTest < ApplicationSystemTestCase
  setup do
    @test_type = test_types(:one)
  end

  test "visiting the index" do
    visit test_types_url
    assert_selector "h1", text: "Test types"
  end

  test "should create test type" do
    visit test_types_url
    click_on "New test type"

    fill_in "Status", with: @test_type.status
    click_on "Create Test type"

    assert_text "Test type was successfully created"
    click_on "Back"
  end

  test "should update Test type" do
    visit test_type_url(@test_type)
    click_on "Edit this test type", match: :first

    fill_in "Status", with: @test_type.status
    click_on "Update Test type"

    assert_text "Test type was successfully updated"
    click_on "Back"
  end

  test "should destroy Test type" do
    visit test_type_url(@test_type)
    click_on "Destroy this test type", match: :first

    assert_text "Test type was successfully destroyed"
  end
end
