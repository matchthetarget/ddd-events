require 'rails_helper'

RSpec.describe Event, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    it { should have_many(:attendances) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_many(:attending_users) }

    it { should have_many(:commenters) }

    end

    describe "Validations" do

    end
end
