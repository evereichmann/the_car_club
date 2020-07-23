class Car < ApplicationRecord
    has_many :likes
    has_many :fans, through: :likes

    validates :make, :model, :img_url, presence: true 
end
