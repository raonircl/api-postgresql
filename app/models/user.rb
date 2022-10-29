class User < ApplicationRecord
    validates :name, presence: true, length: {minimum:3, maximum:50}
    validates :age, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 } 
end
