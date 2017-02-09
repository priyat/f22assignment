class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku_id
      t.integer :price
      t.text :description
      t.datetime :expire_date
      t.text :tags
      t.text :categories

      t.timestamps null: false
    end
  end
end
