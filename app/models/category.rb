class Category < ActiveRecord::Base
  has_many :things
  attr_accessible :name, :id
end
