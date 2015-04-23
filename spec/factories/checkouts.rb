FactoryGirl.define do
  factory :checkout do
  	cart_id  1 
  	name { 'Louis Bennett' }
  	telephone { '07700900820' }
  	adress { '14 Beechpark Street, Belfast, Belfast BT14 6DX' }
  	city { 'Belfast' }
  	email { 'test@test.test' }
  	info { 'Some Description' }
  end
end