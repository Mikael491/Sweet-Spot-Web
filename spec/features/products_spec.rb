require 'rails_helper'

RSpec.feature "Products", type: :feature, js: true do
  describe "index" do
    let!(:product) { create :product }
    it "should list all products" do
      visit root_path
      expect(page).to have_content(product.name)
  end
end
  describe 'filling out create product form' do 
    it "should click for form" do 
      visit new_product_path
      fill_in 'Name', with: 'Iphone'
      fill_in 'Description', with: 'Popular'
      fill_in 'Price', with:5
      click_button 'Create Product'
      expect(page).to have_content
    end
  end
end


  
