require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title: 'Loren Ipsum'
      description: 'Wibbles are fun'
      image_url: 'loren.jpg'
      price: 19.96
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should update product" do
    patch :update, id: @product, product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title }
    assert_redirected_to product_path(assigns(:product))
  end

  end
end
