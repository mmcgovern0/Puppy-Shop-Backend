class FavoriteProductsController < ApplicationController
  before_action :set_favorite_product, only: [:show, :update, :destroy]

  # GET /favorite_products
  def index
    @favorite_products = FavoriteProduct.all

    render json: @favorite_products
  end

  # GET /favorite_products/1
  def show
    render json: @favorite_product
  end

  # POST /favorite_products
  def create
    @favorite_product = FavoriteProduct.new(favorite_product_params)
    
    if @favorite_product.save
      render json: @favorite_product, status: :created, location: @favorite_product
    else
      render json: @favorite_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_products/1
  def update
    if @favorite_product.update(favorite_product_params)
      render json: @favorite_product
    else
      render json: @favorite_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_products/1
  def destroy
    @favorite_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_product
      @favorite_product = FavoriteProduct.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_product_params
      params.require(:favorite_product).permit(:user_id, :product_id, :product)
    end
end
