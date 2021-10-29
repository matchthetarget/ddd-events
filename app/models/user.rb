class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :comments,
             dependent: :destroy

  has_many   :attendances,
             dependent: :destroy

  has_many   :created_events,
             class_name: "Event",
             dependent: :destroy

  # Indirect associations

  has_many   :attended_events,
             through: :comments,
             source: :event

  has_many   :commented_events,
             through: :comments,
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
