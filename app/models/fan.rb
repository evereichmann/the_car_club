class Fan < ApplicationRecord
    has_many :likes
    has_many :cars, through: :likes
end
