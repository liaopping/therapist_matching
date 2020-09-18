class AddColumnsToTherapists < ActiveRecord::Migration[5.2]
  def change
    add_column :therapists, :name, :string
    add_column :therapists, :sex, :integer
    add_column :therapists, :age, :integer
    add_column :therapists, :pref, :integer
    add_column :therapists, :postal_code, :string
    add_column :therapists, :city, :string
    add_column :therapists, :address, :string
    add_column :therapists, :nearest_station, :string
    add_column :therapists, :image, :string
    add_column :therapists, :license, :integer
    add_column :therapists, :self_introduction, :string
    add_column :therapists, :work_experience, :string
  end
end
