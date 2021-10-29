class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :interest_levels,
             -> { interested_or_going },
             dependent: :destroy

  has_many   :comments,
             dependent: :destroy

  has_many   :created_events,
             class_name: "Event",
             dependent: :destroy

  # Indirect associations

  has_many   :interested_events,
             through: :interest_levels,
             source: :event

  # Validations

  # Scopes

  def to_s
    first_name
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
