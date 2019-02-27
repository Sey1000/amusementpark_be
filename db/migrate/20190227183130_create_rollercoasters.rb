class CreateRollercoasters < ActiveRecord::Migration[5.2]
  def change
    create_table :rollercoasters do |t|
      t.string :name
      t.integer :construction_year
      t.references :amusementpark, foreign_key: true

      t.timestamps
    end
  end
end
