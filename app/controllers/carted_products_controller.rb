class CartedProductsController < ApplicationController
def index
  @carted_products = current_user.carted_products.where(status: 'carted')
    if @carted_products.empty?
      flash[:info] = "Your cart is empty"
      redirect_to '/'
    #@carted_products = current_user.carted_products.where(status: 'carted')
    end
  end

  def create
    CartedProduct.create(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    status: 'carted'
    )
    redirect_to "/carted_products"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: 'removed')
    flash[:success] = "#{carted_product.product.name} it was removed"
    redirect_to '/carted_products'
  end
  end
