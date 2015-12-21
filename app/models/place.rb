class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates_presence_of :name, :address, :description
  validates :name, :length => { :minimum => 4 }
end
