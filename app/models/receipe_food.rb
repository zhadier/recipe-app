class ReceipeFood < ApplicationRecord
  belongs_to :receipe
  belongs_to :food
end
