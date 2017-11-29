class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :value
      t.references :user, index: true

      t.timestamps
    end
  end
end
