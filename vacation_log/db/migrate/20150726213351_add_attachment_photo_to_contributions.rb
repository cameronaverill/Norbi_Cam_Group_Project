class AddAttachmentPhotoToContributions < ActiveRecord::Migration
  def self.up
    change_table :contributions do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :contributions, :photo
  end
end
