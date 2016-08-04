class ProductsController < ApplicationController
  def index
  each_cons(3) { |group|  }  @products = Product.all #to show all products on the index page
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

      flash[:success] = "Product was successfully created"
      redirect_to "/products/#{@product.id}"
  end

#to show each product in the show page
  def show
   @product = Product.find_by(id: params[:id])
   render "show.html.erb"
  end

end
