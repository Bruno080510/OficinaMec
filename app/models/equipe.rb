class Equipe < ApplicationRecord
    has_many :funcionarios
    has_many :cars
end
