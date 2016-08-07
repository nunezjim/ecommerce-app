class ProductsController < ApplicationController
  def index
    @products = Product.all #to show all products in the index page
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

  #to show each product in the show page (by id)
  def show
   @product = Product.find_by(id: params[:id])
   render "show.html.erb"
  end

  #To edit page
  def edit
    @product = Product.find_by(id: params[:id])
   render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  #delete a product
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product was deleted"
    redirect_to "/"
  end

  def search
    @products = Product.where("LOWER(name) LIKE ?", "%#{params[:search].downcase}%")
    render "index.html.erb"
  end
end
