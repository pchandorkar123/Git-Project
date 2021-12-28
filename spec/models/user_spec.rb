require 'rails_helper'


RSpec.describe User, type: :model do
	let(:user) { FactoryBot.create :user }

	it 'is invalid without contact' do 
	user = User.new(contact: nil)
  	user.valid?
  	expect(user.errors[:contact]).to_not include("contact must be presence") end


  	
	
end