class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates_presence_of :name, :address, :description
  validates :name, :length => { :minimum => 4 }
end
