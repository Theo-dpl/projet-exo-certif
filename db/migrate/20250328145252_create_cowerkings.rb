class CreateCowerkings < ActiveRecord::Migration[7.1]
  def change
    create_table :cowerkings do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
