class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :description
      t.references :creator, foreign_key: true

      t.timestamps
    end
  end
end
