class Entry < ApplicationRecord
	def change
		create_table :entries do |t|
			t.string :meal_time
			t.integer :calories
			t.integer :proteins
			t.integer :carbohydrates
			t.integer :fats
		end
	end
end
