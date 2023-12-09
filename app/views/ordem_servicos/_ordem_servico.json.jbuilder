json.extract! ordem_servico, :id, :car_id, :servico_id, :peca_id, :equipe_id, :data_hora, :descricao, :created_at, :updated_at
json.url ordem_servico_url(ordem_servico, format: :json)
