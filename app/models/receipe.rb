class Receipe < ApplicationRecord
  has_many :receipe_foods, dependent: :delete_all
  belongs_to :user
end
