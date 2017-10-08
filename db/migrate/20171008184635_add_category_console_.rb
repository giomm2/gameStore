class AddCategoryConsole < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :console, index: true, foreign_key: { to_table: :consoles }, null: false
    add_reference :products, :category, index: true, foreign_key: { to_table: :categories }, null: false
  end
end
