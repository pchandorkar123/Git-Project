require 'rails_helper'

RSpec.describe Apply, type: :model do
    describe "Association between apply for job and worker" do
      it { should belong_to(:worker) }
    end

    describe "class methods" do 
      it "count the value" do
        worker = Worker.create!(email:"pooja@gmail.com",password:123456,password_confirmation:123456,contact:8529637415,
          confirmed_at: Date.today )
        apply  = worker.applies.create!(name: "Worker",contact:8529637415,experience:'2year',expectedSalary:2000)

        expect(Apply.count).to eq(1)
      end

    end

end

