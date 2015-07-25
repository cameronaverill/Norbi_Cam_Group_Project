class Event < ActiveRecord::Base
	has_many :contributions

	has_attached_file :avatar,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename", 
      :styles => { :smal => "200x200>" }

	validates_attachment_content_type :avatar, :content_type => ["avatar/jpg", "avatar/jpeg", "avatar/png", "avatar/gif"]
end
