class EventResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :starts_at, :datetime
  attribute :ends_at, :datetime
  attribute :user_id, :integer
  attribute :address, :string
  attribute :photo, :string

  # Direct associations

  has_many   :interest_levels

  has_many   :comments

  belongs_to :user

  # Indirect associations

  many_to_many :interested_attendees,
               resource: UserResource
end
