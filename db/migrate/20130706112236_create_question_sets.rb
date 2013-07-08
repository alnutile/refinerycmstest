class CreateQuestionSets < ActiveRecord::Migration
  def change
    create_table :question_sets do |t|
      t.integer :set_id
      t.integer :api_id
      t.boolean :private

      t.timestamps
    end
  end
end
