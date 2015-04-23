require 'rails_helper'

describe ProductsController do
  let(:admin) { FactoryGirl.create(:user,:email => 'test@test.test') }
  before(:each) do
    sign_in admin
  end
  
  describe 'POST #create' do
      it 'creates the product ' do
        product = FactoryGirl.create(:product)
        expect(product.id).to eq(1)
        expect(Product.all.count).to eq(1)
      end

      it 'redirects to the "show" action for the new product' do
        post :create, product: attributes_for(:product)
        expect(response).to redirect_to Product.first
      end
  end

  describe 'PATCH #update' do
    it 'updates product' do
      product = FactoryGirl.create(:product, :name => 'E-liquid')
      expect(product.name).to eq('E-liquid')
      put :update , :id => product.id , product: attributes_for(:product,:name => 'E-liquid2')
      expect(Product.first.name).to eq('E-liquid2')
      expect(Product.all.count).to eq(1)
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys product' do
       #create
       post :create, product: attributes_for(:product)
       expect(response).to redirect_to Product.first
       expect(Product.all.count).to eq(1)
       #destroy
       delete :destroy, :id => Product.first 
       expect(response).to redirect_to products_path
       expect(Product.all.count).to eq(0)
    end
  end
end