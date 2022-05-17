class Receipe < ApplicationRecord
    has_many :receipe_foods, dependent: :destroy_all
    belongs_to :user
end
