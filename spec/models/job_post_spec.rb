require 'rails_helper'

RSpec.describe JobPost, type: :model do
  
  let(:job_post) { FactoryBot.create :job_post }

  it "is invalid without a title" do
  job_post = JobPost.new(title: nil)
  job_post.valid?
  expect(job_post.errors[:title]).to_not include("title must be presence") end

  it "is invalid without a Contact" do
  job_post = JobPost.new(contact: nil)
  job_post.valid?
  expect(job_post.errors[:contact]).to_not include("contact must be presence") end

  describe 'Association between jobpost and contractor' do
    it {should belong_to :contractor}
  end

  describe "class methods" do 
      it "count the value" do
        contractor = Contractor.create!(email:"pooja@gmail.com",password:123456,password_confirmation:123456,contact:8529637415,
          confirmed_at: Date.today )
        JobPost  = contractor.job_posts.create!(title: "Contractor",description:"feild to apply",contact:8529637415,salary:2000)

        expect(Contractor.count).to eq(2)
      end

    end

end