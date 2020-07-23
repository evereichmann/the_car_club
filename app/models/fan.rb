class Fan < ApplicationRecord
    has_many :likes
    has_many :cars, through: :likes

    validates :name, :city, :state, :img_url, presence: true 
end
