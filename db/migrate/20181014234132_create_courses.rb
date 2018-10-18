class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :identifier
      t.string :comment
      t.string :term
      t.string :code
      t.string :continuity_id
      t.string :name
      t.string :description
      t.float :credits
      t.boolean :independent_study
      t.string :requirements
      t.string :subjects

      t.timestamps
    end
  end
end
