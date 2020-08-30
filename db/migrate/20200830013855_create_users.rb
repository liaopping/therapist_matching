class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.string :email, null:false, unique: true
      t.string :sex, null:false
      t.integer :age, null:false
      t.string :pref, null:false
      t.string :user_type, null:false
      t.string :password, null:false
      t.string :image
      t.string :treatment_type
      t.string :comment
      t.timestamps
    end
  end
end
