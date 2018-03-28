require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
    
    def setup
        @category = Category.new
        @category.name = "sports"
        @category.save
        @user = User.create(username: "John",email: "John@example.com",password: "password",admin: true)
    end
    
    test "should get categories index" do
        get :index
        assert_response :success
    end

    test "should get new" do
        session[:user_id] = @user.id
        get :new
        assert_response :success
    end
    
    test "should get show" do
        get(:show, {'id' => @category.id})
        assert_response :success
    end
   
   test "should not be created if user is not admin" do
        assert_no_difference 'Category.count' do
            post :create, category: {name: "sport"} 
        end
        assert_redirected_to categories_path   
   end
end