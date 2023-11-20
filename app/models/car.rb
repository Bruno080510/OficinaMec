class Car < ApplicationRecord
    belongs_to :oficina, optional: true
end
