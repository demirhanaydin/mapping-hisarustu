class Place < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode, :if => :latitude_changed?

  validates :title, presence: true

  def latlng
    [latitude, longitude]
  end
end
