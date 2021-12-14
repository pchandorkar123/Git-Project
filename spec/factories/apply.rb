require 'faker'

FactoryBot.define do 
	factory :apply do 
		name "worker"
		contact 8523697415 
		experience "2year"
		expectedSalary 2000
		worker_id 2
	end
	factory :applies, class: Apply do
		name { Faker::Name.name }
		contact { Faker::Contact.contact }
		experience { Faker::Experience.experience }
		expectedSalary { Faker::ExpectedSalary.expectedSalary }
		worker_id { Faker::Worker_id.worker_id }

	end
end