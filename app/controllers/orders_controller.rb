class OrdersController < ApplicationController
  def create
    carted_products = current_user.carted_products.where(status: 'carted')
    order = Order.create(
      user_id: current_user.id,
    )
    carted_products.update_all(order_id: order.id, status: 'purchased')
    order.calculate_totals
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    @carted_products = @order.carted_products
  end
end
