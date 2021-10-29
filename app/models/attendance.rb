class Attendance < ApplicationRecord
  enum attending: {"yes"=>0, "no"=>1, "maybe"=>2} 

  # Direct associations

  belongs_to :event

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    attending
  end

end
