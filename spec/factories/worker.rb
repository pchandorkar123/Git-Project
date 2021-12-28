
FactoryBot.define do 
	factory :worker do 
		email 'workertest@gmail.com'
		password 'password'
		contact 8529637415
		confirmed_at { Date.today }



	end
end

  