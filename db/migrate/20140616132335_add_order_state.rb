class AddOrderState < ActiveRecord::Migration
  def change
		add_column :orders, :order_state, :string
  end
end
