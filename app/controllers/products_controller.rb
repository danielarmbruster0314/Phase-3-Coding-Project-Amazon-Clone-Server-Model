class ProductsController < ApplicationController 

  get '/product/:name' do
    product = Product.find(params[:name])
    product.to_json
  end

  get '/products' do
    product = Product.all
    product.to_json(include: :reviews)
  end

  get '/products/:category' do
    Product.category.all.to_json(include: :reviews)
    
  end

  get '/products/least_expensive' do
    products = Product.all.order(:price)
    prodcuts.to_json
  end

  get '/products/most_expensive' do
    prodcuts = Product.all.order(:price).desc
    prodcuts.to_json
  end

  get '/product/:name' do
    product = Product.where("name LIKE ?", "%#{params[:name]}%")
    product.to_json
  end

  post '/product/:name' do
    product = Product.create(
      name:(params[:name]),
      image:(params[:image]),
      price:(params[:price]),
      description:(params[:description]),
      category:(params[:category])
    )
    product.to_json
  end

  patch '/product/:id' do
    product = Product.find(params[:id])
    product.update(
      name:(params[:name]),
      image:(params[:image]),
      price:(params[:price]),
      description:(params[:description]),
      category:(params[:category])
    )
    product.to_json
  end

  delete '/product/:id' do
    product = Product.find(params[:id])
    product.destroy
    product.to_json
  end
end