class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :control_no, limit: 8
      t.string :machine_code
      t.string :machine_name

      t.timestamps
    end
    add_index :products, :control_no, unique: true
  end
end
