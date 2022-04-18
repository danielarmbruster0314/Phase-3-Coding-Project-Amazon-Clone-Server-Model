class User < ActiveRecord::Base
    has_many :reviews
    has_many :orders
    has_many :products, through: :reviews
    has_many :products, through: :orders
end