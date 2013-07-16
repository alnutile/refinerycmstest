class RemoveLogoFromSettings < ActiveRecord::Migration
  def up
	remove_column :settings, :logo
  end

  def down
  end
end
