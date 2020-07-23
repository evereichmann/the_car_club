class Car < ApplicationRecord
    has_many :likes
    has_many :fans, through: :likes
end
