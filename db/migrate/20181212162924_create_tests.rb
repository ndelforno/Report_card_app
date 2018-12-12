class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :course_id
      t.integer :weight

      t.timestamps
    end
  end
end
