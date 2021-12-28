FactoryBot.define do 
	factory :job_post do 
		association :contractor
		title 'Dusting'
		description 'Dusting'
		contact 7418529635
		salary 2000

	end
	factory :job_post1, class: JobPost do
		title { Faker::Title.title }
		description { Faker::Description.description }
		contact { Faker::Contact.contact }
		salary { Faker::Salary.salary }
		

	end
end