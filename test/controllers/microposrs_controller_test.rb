require 'test_helper'

class MicroposrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microposr = microposrs(:one)
  end

  test "should get index" do
    get microposrs_url
    assert_response :success
  end

  test "should get new" do
    get new_microposr_url
    assert_response :success
  end

  test "should create microposr" do
    assert_difference('Microposr.count') do
      post microposrs_url, params: { microposr: { content: @microposr.content, user_id: @microposr.user_id } }
    end

    assert_redirected_to microposr_url(Microposr.last)
  end

  test "should show microposr" do
    get microposr_url(@microposr)
    assert_response :success
  end

  test "should get edit" do
    get edit_microposr_url(@microposr)
    assert_response :success
  end

  test "should update microposr" do
    patch microposr_url(@microposr), params: { microposr: { content: @microposr.content, user_id: @microposr.user_id } }
    assert_redirected_to microposr_url(@microposr)
  end

  test "should destroy microposr" do
    assert_difference('Microposr.count', -1) do
      delete microposr_url(@microposr)
    end

    assert_redirected_to microposrs_url
  end
end
