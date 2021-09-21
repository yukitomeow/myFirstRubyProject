class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :item, limit:128, null:false
      t.string :color, limit:128, null:false
      t.integer :season

      t.timestamps
    end
  end
end
