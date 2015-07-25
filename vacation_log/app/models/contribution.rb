class Contribution < ActiveRecord::Base
	belongs_to :event
	has_attached_file :avatar, :styles => {:thumb => "100X100>"}

	validates_attachment_content_type :avatar, :content_type => ["avatar/jpg", "avatar/jpeg", "avatar/png", "avatar/gif"]

end
