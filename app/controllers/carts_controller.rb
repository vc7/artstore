class CartsController < ApplicationController

	before_action :authenticate_user!, :only => [:checkout]

	def index
		@order = current_user.orders.build
		@info = @order.build_info
	end
end
