require 'rails_helper'

RSpec.describe Contractor, type: :model do
    describe "Association between apply for job and worker" do
      it { should have_many :job_posts }
    end


end

 


