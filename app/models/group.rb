class Group < ActiveRecord::Base
  has_many :memberships
  has_many :members, :through => :memberships, :source => :user
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id
  has_attached_file :photo, :styles => { :thumb => "100x100",
                                         :small => "200x200" }
  attr_accessible :name, :description, :private, :created_at, :group_id
  attr_accessible :photo, :photo_file_name, :photo_content_type,
                  :photo_file_size,  :photo_updated_at                                  
end
