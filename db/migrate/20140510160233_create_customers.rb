class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.string :password
      t.text :address
      t.string :postalcode
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
