class CreateCalories < ActiveRecord::Migration[5.1]
  def change
    create_table :calories do |t|
      t.integer :value
      t.references :user, index: true

      t.timestamps
    end
  end
end
