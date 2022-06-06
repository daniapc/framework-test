require "test_helper"

class BancodadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bancodado = bancodados(:one)
  end

  test "should get index" do
    get bancodados_url
    assert_response :success
  end

  test "should get new" do
    get new_bancodado_url
    assert_response :success
  end

  test "should create bancodado" do
    assert_difference("Bancodado.count") do
      post bancodados_url, params: { bancodado: { cpf: @bancodado.cpf, entidade: @bancodado.entidade, genero: @bancodado.genero, nascimento: @bancodado.nascimento, nome: @bancodado.nome, rg: @bancodado.rg } }
    end

    assert_redirected_to bancodado_url(Bancodado.last)
  end

  test "should show bancodado" do
    get bancodado_url(@bancodado)
    assert_response :success
  end

  test "should get edit" do
    get edit_bancodado_url(@bancodado)
    assert_response :success
  end

  test "should update bancodado" do
    patch bancodado_url(@bancodado), params: { bancodado: { cpf: @bancodado.cpf, entidade: @bancodado.entidade, genero: @bancodado.genero, nascimento: @bancodado.nascimento, nome: @bancodado.nome, rg: @bancodado.rg } }
    assert_redirected_to bancodado_url(@bancodado)
  end

  test "should destroy bancodado" do
    assert_difference("Bancodado.count", -1) do
      delete bancodado_url(@bancodado)
    end

    assert_redirected_to bancodados_url
  end
end
