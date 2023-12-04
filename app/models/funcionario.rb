class Funcionario < ApplicationRecord
    belongs_to :equipe, optional: true
end
