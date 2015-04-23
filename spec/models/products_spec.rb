require 'rails_helper'

describe Product do
 
  describe 'validation' do

    it('name length min 5'){ expect(build(:product,:name => '1234')).to be_invalid }
    it('category presence') { expect(build(:product,:category_id => nil)).to be_invalid }
    it('price presence') { expect(build(:product,:price => nil)).to be_invalid }
    it('description presence') { expect(build(:product,:description => '')).to be_invalid }
    

    it('in_stock only_integer') { expect(build(:product,:in_stock => 2.5)).to be_invalid }
    it('in_stock can\'t be zero ') { expect(build(:product,:in_stock => 0)).to be_invalid }
    it('in_stock presence') { expect(build(:product,:in_stock => nil)).to be_invalid }
      
  end

end