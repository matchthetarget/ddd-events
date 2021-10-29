class Event < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :attendances,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_many   :commenters,
             :through => :comments,
             :source => :user

  # Validations

  # Scopes

  def to_s
    name
  end

end
