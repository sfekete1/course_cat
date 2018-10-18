class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.integer :identifier
      t.string :comment
      t.string :email
      t.string :first
      t.string :middle
      t.string :last

      t.timestamps
    end
  end
end
