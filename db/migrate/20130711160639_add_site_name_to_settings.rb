class AddSiteNameToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :sitename, :string
  end
end
