class AddColumnToCowerking < ActiveRecord::Migration[7.1]
  def change
    add_column :cowerkings, :photo, :string
  end
end
