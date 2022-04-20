class ReviewsController < ApplicationController

  get 'reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

  post '/reviews' do
    review = Review.create(
      review: (params[:review]),
      star_rating: (params[:star_rating]),
      user_id: (params[:user_id]),
      product_id: (params[:product_id])
    )
    review.to_json
  end
    
  patch 'reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      star_rating: (params[:star_rating]),
      review: (params[:review])
    )
    review.to_json
  end

  delete 'reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
  
end
