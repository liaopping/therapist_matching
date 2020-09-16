class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, null:false
      t.string :email, null:false, unique: true
      t.integer :sex, null:false
      t.integer :age, null:false
      t.integer :pref, null:false
      t.string :password_digest, null:false
      t.string :postal_code
      t.string :city
      t.string :address
      t.string :nearest_station
      t.string :image
      # t.references :reservation, foreign_key: true
      t.timestamps
    end
  end
end
