require 'spec_helper'

describe Checkout do
  it { should belong_to(:book) }

  it "should have a name, book_id and phone_number" do
  	checkout = FactoryGirl.create(:checkout, name: 'Van', phone_number: '222-222-2222', book_id: 1 )
  	expect(checkout.name).to eql 'Van'
  	expect(checkout.phone_number).to eql '222-222-2222'
  	expect(checkout.book_id).to eql 1
  end
end

