class Singer < ActiveRecord::Base
  attr_accessible :country, :name, :twitter
  has_many :albums

  validates_presence_of :name
  validates_uniqueness_of :twitter, allow_blank: true
end
