require "rails_helper"

RSpec.describe Event, type: :model do
  describe "Direct Associations" do
    it { should have_many(:interest_levels) }

    it { should have_many(:comments) }

    it { should belong_to(:user) }
  end

  describe "InDirect Associations" do
    it { should have_many(:interested_attendees) }
  end

  describe "Validations" do
  end
end
