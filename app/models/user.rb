class User < ApplicationRecord
  # Direct associations

  has_many   :attendances,
             :dependent => :destroy

  has_many   :created_events,
             :class_name => "Event",
             :dependent => :destroy

  # Indirect associations

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
