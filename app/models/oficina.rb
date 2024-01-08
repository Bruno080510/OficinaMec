class Oficina < ApplicationRecord
  has_many :cars, dependent: :destroy
end
