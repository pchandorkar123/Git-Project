require 'rails_helper'

RSpec.describe Worker, type: :model do
    describe "Association between apply for job and worker" do
      it { should have_many :applies }
    end


end
