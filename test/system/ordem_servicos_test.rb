require "application_system_test_case"

class OrdemServicosTest < ApplicationSystemTestCase
  setup do
    @ordem_servico = ordem_servicos(:one)
  end

  test "visiting the index" do
    visit ordem_servicos_url
    assert_selector "h1", text: "Ordem servicos"
  end

  test "should create ordem servico" do
    visit ordem_servicos_url
    click_on "New ordem servico"

    fill_in "Car", with: @ordem_servico.car_id
    fill_in "Data hora", with: @ordem_servico.data_hora
    fill_in "Descricao", with: @ordem_servico.descricao
    fill_in "Equipe", with: @ordem_servico.equipe_id
    fill_in "Peca", with: @ordem_servico.peca_id
    fill_in "Servico", with: @ordem_servico.servico_id
    click_on "Create Ordem servico"

    assert_text "Ordem servico was successfully created"
    click_on "Back"
  end

  test "should update Ordem servico" do
    visit ordem_servico_url(@ordem_servico)
    click_on "Edit this ordem servico", match: :first

    fill_in "Car", with: @ordem_servico.car_id
    fill_in "Data hora", with: @ordem_servico.data_hora
    fill_in "Descricao", with: @ordem_servico.descricao
    fill_in "Equipe", with: @ordem_servico.equipe_id
    fill_in "Peca", with: @ordem_servico.peca_id
    fill_in "Servico", with: @ordem_servico.servico_id
    click_on "Update Ordem servico"

    assert_text "Ordem servico was successfully updated"
    click_on "Back"
  end

  test "should destroy Ordem servico" do
    visit ordem_servico_url(@ordem_servico)
    click_on "Destroy this ordem servico", match: :first

    assert_text "Ordem servico was successfully destroyed"
  end
end
