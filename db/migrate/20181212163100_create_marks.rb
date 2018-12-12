class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :test_id
      t.integer :student_id
      t.integer :mark

      t.timestamps
    end
  end
end
