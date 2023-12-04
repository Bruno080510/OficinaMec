class Car < ApplicationRecord
    belongs_to :oficina, optional: true
    has_many :servicos, dependent: :destroy
    belongs_to :equipe
end
  