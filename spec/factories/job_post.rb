FactoryBot.define do 
	factory :job_post do 
		title 'Dusting'
		description 'Dusting'
		contact 7418529635
		salary 2000
		contractor_id 1

	end
	factory :job_post1, class: JobPost do
		title { Faker::Title.title }
		description { Faker::Description.description }
		contact { Faker::Contact.contact }
		salary { Faker::Salary.salary }
		contractor_id { Faker::Contractor_id.contractor_id }

	end
end