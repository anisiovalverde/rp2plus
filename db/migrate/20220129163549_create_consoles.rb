class CreateConsoles < ActiveRecord::Migration[7.0]
  def change
    create_table :consoles do |t|
      t.string :name
      t.string :category
      t.boolean :active
      t.text :link
      t.text :video
      t.integer :price

      t.timestamps
    end
  end
end
