class CreatePentries < ActiveRecord::Migration[6.1]
  def change
    create_table :pentries do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbohydrates
      t.integer :fats

      t.timestamps
    end
  end
end
