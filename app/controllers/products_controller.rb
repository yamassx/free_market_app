class ProductsController < ApplicationController
  before_action :access_registration, except: [:index, :show]

  def index
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to '/'
  end

  def show
  end
  
  def edit
  end


private

    def access_registration
      redirect_to new_user_session_path, unless user_signed_in?　
      end
    end


  private
  def product_params
    params.require(:product).permit(:name, :content, :status, :delivery_charge, :shipping_method, :date_of_shipment, :price)
  end
end
