class Mecanico < ApplicationRecord
    belongs_to :equipe, optional: true
end
