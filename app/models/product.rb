class Product < ActiveRecord::Base
    has_many :reviews
    has_many :orders
    has_many :users, through: :reviews
    has_many :users, through: :orders

    def average_rating
        self.reviews.average(:star_rating).to_i 
    end 
end