require "open-uri"
class Event < ApplicationRecord
  before_validation :geocode_address

  def geocode_address
    if address.present?
      url = "https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GMAP_API_KEY']}&address=#{URI.encode(address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  mount_uploader :photo, PhotoUploader

  # Direct associations

  has_many   :interest_levels,
             dependent: :destroy

  has_many   :comments,
             dependent: :destroy

  belongs_to :user

  # Indirect associations

  has_many   :interested_attendees,
             through: :interest_levels,
             source: :user

  # Validations
  validates :name, presence: true
  # Scopes

  def to_s
    name
  end
end
