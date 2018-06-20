class BuyerProductsController < ApplicationController
  before_action :set_buyer_product, only: [:show, :edit, :update, :destroy]

  # GET /buyer_products
  # GET /buyer_products.json
  def index
    @buyer_products = BuyerProduct.all
  end

  # GET /buyer_products/1
  # GET /buyer_products/1.json
  def show
  end

  # GET /buyer_products/new
  def new
    @buyer_product = BuyerProduct.new
  end

  # GET /buyer_products/1/edit
  def edit
  end

  # POST /buyer_products
  # POST /buyer_products.json
  def create
    @buyer_product = BuyerProduct.new(buyer_product_params)

    respond_to do |format|
      if @buyer_product.save
        format.html { redirect_to @buyer_product, notice: 'Buyer product was successfully created.' }
        format.json { render :show, status: :created, location: @buyer_product }
      else
        format.html { render :new }
        format.json { render json: @buyer_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyer_products/1
  # PATCH/PUT /buyer_products/1.json
  def update
    respond_to do |format|
      if @buyer_product.update(buyer_product_params)
        format.html { redirect_to @buyer_product, notice: 'Buyer product was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyer_product }
      else
        format.html { render :edit }
        format.json { render json: @buyer_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyer_products/1
  # DELETE /buyer_products/1.json
  def destroy
    @buyer_product.destroy
    respond_to do |format|
      format.html { redirect_to buyer_products_url, notice: 'Buyer product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer_product
      @buyer_product = BuyerProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_product_params
      params.require(:buyer_product).permit(:Buyer_id, :Product_id)
    end
end
