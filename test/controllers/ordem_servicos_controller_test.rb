require "test_helper"

class OrdemServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordem_servico = ordem_servicos(:one)
  end

  test "should get index" do
    get ordem_servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_ordem_servico_url
    assert_response :success
  end

  test "should create ordem_servico" do
    assert_difference("OrdemServico.count") do
      post ordem_servicos_url, params: { ordem_servico: { car_id: @ordem_servico.car_id, data_hora: @ordem_servico.data_hora, descricao: @ordem_servico.descricao, equipe_id: @ordem_servico.equipe_id, peca_id: @ordem_servico.peca_id, servico_id: @ordem_servico.servico_id } }
    end

    assert_redirected_to ordem_servico_url(OrdemServico.last)
  end

  test "should show ordem_servico" do
    get ordem_servico_url(@ordem_servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordem_servico_url(@ordem_servico)
    assert_response :success
  end

  test "should update ordem_servico" do
    patch ordem_servico_url(@ordem_servico), params: { ordem_servico: { car_id: @ordem_servico.car_id, data_hora: @ordem_servico.data_hora, descricao: @ordem_servico.descricao, equipe_id: @ordem_servico.equipe_id, peca_id: @ordem_servico.peca_id, servico_id: @ordem_servico.servico_id } }
    assert_redirected_to ordem_servico_url(@ordem_servico)
  end

  test "should destroy ordem_servico" do
    assert_difference("OrdemServico.count", -1) do
      delete ordem_servico_url(@ordem_servico)
    end

    assert_redirected_to ordem_servicos_url
  end
end
