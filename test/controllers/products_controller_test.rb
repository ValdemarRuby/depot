require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title: 'Loren Ipsum',
      description: 'Wibbles are fun!',
      image_url: 'loren.jpg',
      price: 19.95
    }
  end

  test "should get new" do
    get :new
    assert_response :success
  end
end
