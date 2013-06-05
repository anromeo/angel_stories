class Story < ActiveRecord::Base
  attr_accessible :angel, :author, :description, :title

  validates :description, presence: true
  has_many :points
end
