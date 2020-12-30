class AddPartFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :birth_date, :date
    add_column :users, :direct_blood, :boolean
  end
end
