class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :color
      t.string :code
      t.string :fabric
      t.string :product_image
      t.decimal :price

      t.timestamps
    end
  end
end
