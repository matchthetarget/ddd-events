class EventResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :starts_at, :datetime
  attribute :ends_at, :datetime
  attribute :user_id, :integer

  # Direct associations

  has_many   :comments

  has_many   :attendances

  belongs_to :user

  # Indirect associations

  many_to_many :attending_users,
               resource: UserResource

  many_to_many :commenters,
               resource: UserResource
end
