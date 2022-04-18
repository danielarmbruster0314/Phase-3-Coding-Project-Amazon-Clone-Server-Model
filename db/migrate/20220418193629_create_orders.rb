class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.integer :user_id
      t.integer :product_id
    end
  end
end
