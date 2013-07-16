class RemoveLogoFromSettings < ActiveRecord::Migration
  def up
	remove_column :settings, :logo, :string
  end

  def down
  end
end
