require 'rails_helper'

describe CheckoutsController do

	let(:admin) { FactoryGirl.create(:user) }
 
 describe 'authorization' do
	it 'redirects #index unauthorized' do
		get :index
		expect(response).to redirect_to root_path
	end
	it 'redirects #show unauthorized' do
		checkout = FactoryGirl.create(:checkout)
		get :show , :id => checkout.id
		expect(response).to redirect_to root_path
	end
 end

    it '#new view render' do
      get :new
      expect(response).to render_template("new")
      expect(assigns(:checkout)).to be_a_new(Checkout)
    end


    it 'POST #create' do
        post :create, checkout: attributes_for(:checkout)
        expect(response).to redirect_to root_path
        expect(Checkout.all.count).to(eq(1))
    end

    it 'DELETE #destroy' do
       sign_in admin
       #create
       post :create, checkout: attributes_for(:checkout)
       expect(response).to redirect_to root_path
       expect(Checkout.all.count).to eq(1)
       #destroy
       delete :destroy, :id => Checkout.first 
       expect(response).to redirect_to checkouts_path
       expect(Checkout.all.count).to eq(0)
    end

end