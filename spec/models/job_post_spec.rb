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
end