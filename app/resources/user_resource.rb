class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :first_name, :string
  attribute :last_name, :string
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  has_many   :attendances

  has_many   :created_events,
             resource: EventResource

  # Indirect associations

end
