class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product saved!"
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product updated!"
      redirect_to  products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.order_items.each do |oi|
      oi.destroy
    end
    @product.destroy
    flash[:notice] = "Product deleted!"
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js { }
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
