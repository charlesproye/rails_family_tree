class AddLadyNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lady_name, :string
  end
end
