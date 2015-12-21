class Place < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :address, :description
  validates :name, :length => { :minimum => 4 }
end
