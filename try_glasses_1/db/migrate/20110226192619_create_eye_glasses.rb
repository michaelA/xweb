class CreateEyeGlasses < ActiveRecord::Migration
  def self.up
    create_table :eye_glasses do |t|
      t.string :name,     :null => false
      t.string :material, :null => false
      t.string :color,    :null => false 
      t.string :shape,    :null => false
      t.decimal :price,   :null => false, precision => 6, :scale => 2
      t.string :who_can_wear
      t.string :image_url
	  t.string : brand

      t.timestamps
    end
    
    add_index :eye_glasses, :name
    add_index :eye_glasses, :who_can_wear
    add_index :eye_glasses, :image_url
    
  end

  def self.down
    remove_index :eye_glasses, :name
    remove_index :eye_glasses, :who_can_wear
    remove_index :eye_glasses, :image_url

    drop_table :eye_glasses
  end
end
