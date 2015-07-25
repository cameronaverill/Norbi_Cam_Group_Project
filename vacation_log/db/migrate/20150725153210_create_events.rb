class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.integer :rating
      t.integer :likes

      t.timestamps null: false
    end
  end
end
