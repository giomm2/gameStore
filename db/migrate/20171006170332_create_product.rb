class CreateProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.integer :quantity, default: 1
      t.attachment :image_one, null: false
      t.attachment :image_two
      t.attachment :image_three
      t.date :out_date, null: false
      t.string :url_trailer
      t.timestamps
    end
  end
end
