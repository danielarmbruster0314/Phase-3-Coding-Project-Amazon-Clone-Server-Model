class OrdersController < ApplicationController

  get 'checkout/:id' do
    order = Order.find(params[:id])
    order.to_json
  end

  post 'checkout/:id' do
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
    
  delete 'checkout/:id' do
    order = Order.find(params[:id])
    order.destroy
    order.to_json
  end

end
