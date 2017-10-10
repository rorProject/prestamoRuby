require 'test_helper'

class PrestamosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prestamo = prestamos(:one)
  end

  test "should get index" do
    get prestamos_url
    assert_response :success
  end

  test "should get new" do
    get new_prestamo_url
    assert_response :success
  end

  test "should create prestamo" do
    assert_difference('Prestamo.count') do
      post prestamos_url, params: { prestamo: { Cantidad_a_prestar: @prestamo.Cantidad_a_prestar, Cantidad_de_prestamos: @prestamo.Cantidad_de_prestamos, Cuotas: @prestamo.Cuotas, Deuda: @prestamo.Deuda } }
    end

    assert_redirected_to prestamo_url(Prestamo.last)
  end

  test "should show prestamo" do
    get prestamo_url(@prestamo)
    assert_response :success
  end

  test "should get edit" do
    get edit_prestamo_url(@prestamo)
    assert_response :success
  end

  test "should update prestamo" do
    patch prestamo_url(@prestamo), params: { prestamo: { Cantidad_a_prestar: @prestamo.Cantidad_a_prestar, Cantidad_de_prestamos: @prestamo.Cantidad_de_prestamos, Cuotas: @prestamo.Cuotas, Deuda: @prestamo.Deuda } }
    assert_redirected_to prestamo_url(@prestamo)
  end

  test "should destroy prestamo" do
    assert_difference('Prestamo.count', -1) do
      delete prestamo_url(@prestamo)
    end

    assert_redirected_to prestamos_url
  end
end
