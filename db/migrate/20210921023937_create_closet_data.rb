class CreateClosetData < ActiveRecord::Migration[6.1]
  def change
    create_table :closet_data do |t|
t.string :type
t.string :color  
t.integer :season
      t.timestamps
    end
  end
end
