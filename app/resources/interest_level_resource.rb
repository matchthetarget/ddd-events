class InterestLevelResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :level, :string_enum, allow: InterestLevel.levels.keys
  attribute :user_id, :integer
  attribute :event_id, :integer

  # Direct associations

  belongs_to :event

  belongs_to :user

  # Indirect associations
end
