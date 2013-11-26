class Album < ActiveRecord::Base
  belongs_to :singer
  has_many :songs
  attr_accessible :genre, :title, :year
end
