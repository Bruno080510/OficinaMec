class OrdemServico < ApplicationRecord
  belongs_to :car
  belongs_to :servico
  belongs_to :peca
  belongs_to :equipe
end
