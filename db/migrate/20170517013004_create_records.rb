class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.date :date
      t.text :important_event
      t.float :class_1
      t.float :class_2
      t.float :class_3
      t.float :class_4
      t.float :class_5
      t.float :side_project
      t.float :gym
      t.float :other

      t.timestamps
    end
  end
end
