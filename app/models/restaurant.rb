class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, :address, :category, presence: true
    type_of_cuisine = ["chinese", "italian", "japanese", "french", "belgian"]
    validates :category, inclusion: { in: type_of_cuisine }
  end
