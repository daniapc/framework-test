require "application_system_test_case"

class BancodadosTest < ApplicationSystemTestCase
  setup do
    @bancodado = bancodados(:one)
  end

  test "visiting the index" do
    visit bancodados_url
    assert_selector "h1", text: "Bancodados"
  end

  test "should create bancodado" do
    visit bancodados_url
    click_on "New bancodado"

    fill_in "Cpf", with: @bancodado.cpf
    fill_in "Entidade", with: @bancodado.entidade
    fill_in "Genero", with: @bancodado.genero
    fill_in "Nascimento", with: @bancodado.nascimento
    fill_in "Nome", with: @bancodado.nome
    fill_in "Rg", with: @bancodado.rg
    click_on "Create Bancodado"

    assert_text "Bancodado was successfully created"
    click_on "Back"
  end

  test "should update Bancodado" do
    visit bancodado_url(@bancodado)
    click_on "Edit this bancodado", match: :first

    fill_in "Cpf", with: @bancodado.cpf
    fill_in "Entidade", with: @bancodado.entidade
    fill_in "Genero", with: @bancodado.genero
    fill_in "Nascimento", with: @bancodado.nascimento
    fill_in "Nome", with: @bancodado.nome
    fill_in "Rg", with: @bancodado.rg
    click_on "Update Bancodado"

    assert_text "Bancodado was successfully updated"
    click_on "Back"
  end

  test "should destroy Bancodado" do
    visit bancodado_url(@bancodado)
    click_on "Destroy this bancodado", match: :first

    assert_text "Bancodado was successfully destroyed"
  end
end
