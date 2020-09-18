class AddColumnsToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name, :string
    add_column :customers, :sex, :integer
    add_column :customers, :age, :integer
    add_column :customers, :pref, :integer
    add_column :customers, :postal_code, :string
    add_column :customers, :city, :string
    add_column :customers, :address, :string
    add_column :customers, :nearest_station, :string
    add_column :customers, :image, :string
  end
end
