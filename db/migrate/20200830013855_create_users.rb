class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.string :email, null:false, unique: true
      t.integer :sex, null:false
      t.integer :age, null:false
      t.integer :pref, null:false
      t.integer :user_type, null:false
      t.string :password_digest, null:false
      t.string :image
      t.integer :treatment_type
      t.string :comment
      t.timestamps
    end
  end
end
