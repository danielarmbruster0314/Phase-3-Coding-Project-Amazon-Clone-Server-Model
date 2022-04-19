class ProductsController < ApplicationController 

  get '/product/:name' do
    product = Product.find(params[:name])
    product.to_json
  end

  get '/products' do
    products = Product.all
    products.to_json
  end

  get '/products/:category' do
    products = Product.category.all
    products.to_json
  end

  get '/products/least_expensive' do
    products = Product.all.order(:price)
    prodcuts.to_json
  end

  get 'products/most_expensive' do
    prodcuts = Product.all.order(:price).desc
    prodcuts.to_json
  end

  post 'product/:name' do
    product = Product.create(
      name:(params[:name]),
      image:(params[:image]),
      price:(params[:price]),
      description:(params[:description]),
      category:(params[:category])
    )
    product.to_json
  end

  patch 'product/:id' do
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

  delete 'product/:id' do
    product = Product.find(params[:id])
    product.destroy
    product.to_json
  end
end