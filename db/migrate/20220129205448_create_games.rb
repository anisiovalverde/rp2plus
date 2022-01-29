class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :active
      t.references :plataform, null: false, foreign_key: true
      t.references :work, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :console, null: false, foreign_key: true
      t.string :tester
      t.text :youtube
      t.text :extra

      t.timestamps
    end
  end
end
