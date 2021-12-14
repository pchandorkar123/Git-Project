require 'rails_helper'

RSpec.describe Apply, type: :model do
    describe "Association between apply for job and worker" do
      it { should belong_to(:worker) }
    end

end

