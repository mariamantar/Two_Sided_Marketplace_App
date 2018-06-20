require 'test_helper'

class BuyerProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyer_product = buyer_products(:one)
  end

  test "should get index" do
    get buyer_products_url
    assert_response :success
  end

  test "should get new" do
    get new_buyer_product_url
    assert_response :success
  end

  test "should create buyer_product" do
    assert_difference('BuyerProduct.count') do
      post buyer_products_url, params: { buyer_product: { Buyer_id: @buyer_product.Buyer_id, Product_id: @buyer_product.Product_id } }
    end

    assert_redirected_to buyer_product_url(BuyerProduct.last)
  end

  test "should show buyer_product" do
    get buyer_product_url(@buyer_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyer_product_url(@buyer_product)
    assert_response :success
  end

  test "should update buyer_product" do
    patch buyer_product_url(@buyer_product), params: { buyer_product: { Buyer_id: @buyer_product.Buyer_id, Product_id: @buyer_product.Product_id } }
    assert_redirected_to buyer_product_url(@buyer_product)
  end

  test "should destroy buyer_product" do
    assert_difference('BuyerProduct.count', -1) do
      delete buyer_product_url(@buyer_product)
    end

    assert_redirected_to buyer_products_url
  end
end
