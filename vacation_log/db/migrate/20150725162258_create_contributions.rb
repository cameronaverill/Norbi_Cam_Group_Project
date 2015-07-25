class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :contributor
      t.string :text

      t.timestamps null: false
    end
  end
end
