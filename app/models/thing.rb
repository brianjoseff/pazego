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
  belongs_to :user, :dependent => :destroy
  
  has_attached_file :photo #, :styles => { :small => "150x150>" }
  validates_attachment_size :photo, :less_than => 5.megabytes
end
