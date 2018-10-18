class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :identifier
      t.string :comment
      t.string :term
      t.string :name
      t.string :abbreviation
      t.string :segments

      t.timestamps
    end
  end
end
