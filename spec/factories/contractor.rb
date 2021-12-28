
FactoryBot.define do 
	factory :contractor do 
 		email 'contractortest@gmail.com'
		password 'password'
		contact 8529637415
		confirmed_at { Date.today } # generating the confirmation token

	end
end