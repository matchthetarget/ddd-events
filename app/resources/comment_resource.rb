class CommentResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :event_id, :integer
  attribute :body, :string

  # Direct associations

  belongs_to :event

  belongs_to :user

  # Indirect associations
end
