require 'test_helper'

class PharmciesStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmcies_store = pharmcies_stores(:one)
  end

  test "should get index" do
    get pharmcies_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_pharmcies_store_url
    assert_response :success
  end

  test "should create pharmcies_store" do
    assert_difference('PharmciesStore.count') do
      post pharmcies_stores_url, params: { pharmcies_store: { latitude: @pharmcies_store.latitude, longitude: @pharmcies_store.longitude, name: @pharmcies_store.name } }
    end

    assert_redirected_to pharmcies_store_url(PharmciesStore.last)
  end

  test "should show pharmcies_store" do
    get pharmcies_store_url(@pharmcies_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_pharmcies_store_url(@pharmcies_store)
    assert_response :success
  end

  test "should update pharmcies_store" do
    patch pharmcies_store_url(@pharmcies_store), params: { pharmcies_store: { latitude: @pharmcies_store.latitude, longitude: @pharmcies_store.longitude, name: @pharmcies_store.name } }
    assert_redirected_to pharmcies_store_url(@pharmcies_store)
  end

  test "should destroy pharmcies_store" do
    assert_difference('PharmciesStore.count', -1) do
      delete pharmcies_store_url(@pharmcies_store)
    end

    assert_redirected_to pharmcies_stores_url
  end
end
