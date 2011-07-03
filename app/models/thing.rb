# == Schema Information
# Schema version: 20110624224550
#
# Table name: things
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  categories         :string(255)
#  description        :text
#  price              :integer
#  borrow             :boolean
#  user_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Thing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :name, :categories, :description, :price, :borrow, :created_at, :id
  attr_accessible :photo, :photo_file_name, :photo_content_type, :photo_file_size,  :photo_updated_at
  
  has_attached_file :photo, :styles => { :thumb => "100x100",
                                         :small => "200x200" }
  
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :description, :presence => true, :length => { :maximum => 400 }
  validates :price, :presence => true

  default_scope :order => 'things.created_at DESC'
  
end
