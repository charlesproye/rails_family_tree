class CreateCouples < ActiveRecord::Migration[6.0]
  def change
    create_table :couples do |t|
      t.references :family, null: false, foreign_key: true
      t.integer :blood_user_id
      t.integer :out_user_id


      t.timestamps
    end
  end
end
