class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :color_top
      t.string :color_footer
      t.string :color_background
      t.text :footer
      t.string :logo

      t.timestamps
    end
  end
end
