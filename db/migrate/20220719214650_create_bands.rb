class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :members
      t.date :first_show
      t.integer :band_type

      t.timestamps
    end
  end
end
