class OrdersController < ApplicationController
  get '/oders' do
    order = Order.all
    order.to_json(include: :product)
  end
  get '/orders/:id' do
    order = Order.find(params[:id])
    order.to_json
  end

  post '/orders' do
    order = Order.create(
      order_number: (params[:order_number]),
      user_id: (params[:user_id]),
      product_id: (params[:product_id])
    )
    order.to_json
  end
    
  patch 'checkout/:id' do
    order = Order.find(params[:id])
    order.update(
      user_id: (params[:user_id]),
      product_id: (params[:product_id])
    )
    order.to_json
  end
    
  delete '/orders/:id' do
    order = Order.find(params[:id])
    order.destroy
    order.to_json
  end

end
