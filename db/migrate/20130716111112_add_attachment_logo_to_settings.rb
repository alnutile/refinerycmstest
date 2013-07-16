class AddAttachmentLogoToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :settings, :logo
  end
end
