class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.date :date
      t.string :place
      t.integer :assistants
      t.integer :duration
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
