class CreateConsole < ActiveRecord::Migration[5.1]
  def change
    create_table :consoles do |t|
      t.string :console_name, null: false
      t.timestamps
    end
  end
end
