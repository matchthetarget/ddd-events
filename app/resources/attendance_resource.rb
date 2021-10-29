class AttendanceResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :attending, :string_enum, allow: Attendance.attendings.keys
  attribute :user_id, :integer
  attribute :event_id, :integer

  # Direct associations

  # Indirect associations

end
