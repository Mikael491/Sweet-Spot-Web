require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "#index" do
    it "render the index page" do 
      get :index
      expect(response).to have_rendered("products/index")
    end
    it "should load all products" do
      expect(response.status).to eq 200
      expect(assigns[:products]).to eq @products 
    end
  end

  describe "#new" do 
    it "render the new page" do
      get :new
      expect(response).to have_rendered("products/new")
    end
  end

   describe "#edit" do 
     before {@product1 = Product.create!(name: 'iphone', description: 'new phone', price: 2)}
      it "render the edit page" do
      get :edit, id: @product1
      expect(response).to have_rendered("products/edit")
      assigns(:product).should == @product1
    end
  end

  describe "#show" do
      before {@product1 = Product.create!(name: 'iphone', description: 'new phone', price: 2)}
      it "render the show page" do 
      get :show, id: @product1
      assigns(:product).should == @product1
      expect(response).to have_rendered("products/show")
    end
  end
end
