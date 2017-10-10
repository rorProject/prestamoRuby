require 'test_helper'

class RubyonRailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubyon_rail = rubyon_rails(:one)
  end

  test "should get index" do
    get rubyon_rails_url
    assert_response :success
  end

  test "should get new" do
    get new_rubyon_rail_url
    assert_response :success
  end

  test "should create rubyon_rail" do
    assert_difference('RubyonRail.count') do
      post rubyon_rails_url, params: { rubyon_rail: {  } }
    end

    assert_redirected_to rubyon_rail_url(RubyonRail.last)
  end

  test "should show rubyon_rail" do
    get rubyon_rail_url(@rubyon_rail)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubyon_rail_url(@rubyon_rail)
    assert_response :success
  end

  test "should update rubyon_rail" do
    patch rubyon_rail_url(@rubyon_rail), params: { rubyon_rail: {  } }
    assert_redirected_to rubyon_rail_url(@rubyon_rail)
  end

  test "should destroy rubyon_rail" do
    assert_difference('RubyonRail.count', -1) do
      delete rubyon_rail_url(@rubyon_rail)
    end

    assert_redirected_to rubyon_rails_url
  end
end
