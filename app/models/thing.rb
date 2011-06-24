class Thing < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :photo #, :styles => { :small => "150x150>" }
  validates_attachment_size :photo, :less_than => 5.megabytes
end
