class Equipe < ApplicationRecord
    has_many :mecanicos
    has_many :cars
end
