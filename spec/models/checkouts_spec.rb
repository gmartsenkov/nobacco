require 'rails_helper'

describe Checkout do
 
  describe 'validation' do

    it('cart_id presence'){ expect(build(:checkout,:cart_id => nil )).to be_invalid }
    it('name presence') { expect(build(:checkout,:name => '')).to be_invalid }
    it('telephone min 10 char') { expect(build(:checkout, :telephone => '123456789')).to be_invalid }
    it('address presence') { expect(build(:checkout,:adress => '')).to be_invalid }
    it('city presence') { expect(build(:checkout,:city => '')).to be_invalid }
    it('email validation') { expect(build(:checkout,:email => '12@a.b')).to be_invalid }

  end

end