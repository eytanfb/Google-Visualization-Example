class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.date :date
      t.boolean :shipping

      t.timestamps
    end
  end
end
