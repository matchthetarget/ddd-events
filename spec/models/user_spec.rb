require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:interest_levels) }

    it { should have_many(:comments) }

    it { should have_many(:created_events) }
  end

  describe "InDirect Associations" do
    it { should have_many(:interested_events) }
  end

  describe "Validations" do
  end
end
