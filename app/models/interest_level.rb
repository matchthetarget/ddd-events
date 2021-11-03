class InterestLevel < ApplicationRecord
  enum level: { "interested" => 0, "not_interested" => 1, "going" => 2 }

  # Direct associations

  belongs_to :event

  belongs_to :user

  # Indirect associations

  # Validations

  validates :user_id, uniqueness: { scope: ["event_id"] }

  validates :level, presence: true

  # Scopes

  scope :interested_or_going, -> { where(level: %i[going interested]) }

  def to_s
    level
  end
end
