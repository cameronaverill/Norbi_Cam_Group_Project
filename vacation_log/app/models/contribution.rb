class Contribution < ActiveRecord::Base
	belongs_to :event
    has_attached_file :photo, :styles => { :larger => '400x400', :medium => "200x200>", :thumb => "100x100>" },:default_url => '/system/users/avatars/missing.jpg'
	validates_attachment_presence :photo  
validates_attachment_size :photo, :less_than => 5.megabytes  
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']  

end
