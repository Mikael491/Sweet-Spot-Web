require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) {Product.new(name: "iphone", description:"sleek and clean", price: 2)}
   describe Product do
    context "#save" do
      it "return true" do
        expect {
          product.save
        }.to change(Product,:count).by(1)
      end
    end
  end
  describe Product do
    context "#update" do
      it "return true" do
        expect {
          product.update(name: "Samsung")
        }.to change{ product.name }.to "Samsung"
      end
    end
  end
  describe Product do
    context "#destroy" do
      it "return true" do
        product.destroy
        expect(Product.all).not_to include(product) 
      end
    end
  end
end
