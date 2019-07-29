require 'test_helper'

class FavoriteProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_product = favorite_products(:one)
  end

  test "should get index" do
    get favorite_products_url, as: :json
    assert_response :success
  end

  test "should create favorite_product" do
    assert_difference('FavoriteProduct.count') do
      post favorite_products_url, params: { favorite_product: { product_id: @favorite_product.product_id, user_id: @favorite_product.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show favorite_product" do
    get favorite_product_url(@favorite_product), as: :json
    assert_response :success
  end

  test "should update favorite_product" do
    patch favorite_product_url(@favorite_product), params: { favorite_product: { product_id: @favorite_product.product_id, user_id: @favorite_product.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy favorite_product" do
    assert_difference('FavoriteProduct.count', -1) do
      delete favorite_product_url(@favorite_product), as: :json
    end

    assert_response 204
  end
end
