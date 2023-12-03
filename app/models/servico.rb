class Servico < ApplicationRecord
  belongs_to :car
  has_many :pecas, dependent: :destroy
end