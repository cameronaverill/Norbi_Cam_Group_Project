class Contribution < ActiveRecord::Base
	belongs_to :event
	has_attached_file :avatar, :styles => {:thumb => "100X100>"}

end
