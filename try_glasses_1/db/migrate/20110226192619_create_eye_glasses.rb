class CreateEyeGlasses < ActiveRecord::Migration
  def self.up
    create_table :eye_glasses do |t|
      # Name is the Brand and all the other attributes 
      # material through shape describe the particular pair of frames,
      # thus none of these attributes can be null or empty
      t.string :name,     :null => false
      t.string :material, :null => false
      t.string :color,    :null => false 
      t.string :shape,    :null => false
      # price is a number value that has two decimal places and can be range from 9999 - 0
      t.decimal :price,   :null => false #, precision => 6, :scale => 2
      #default to both genders can wear
      t.string :who_can_wear, :null => false #!!!!add a default tag if one exists!!
      #references the address location of the image for the eyeglass frames
      t.string :image_url, :null => false

      t.timestamps
    end
    
    add_index :eye_glasses, :name
    add_index :eye_glasses, :material
    add_index :eye_glasses, :color 
    add_index :eye_glasses, :shape
    add_index :eye_glasses, :who_can_wear
    add_index :eye_glasses, :image_url
    
  end

  def self.down
    remove_index :eye_glasses, :name
    remove_index :eye_glasses, :material
    remove_index :eye_glasses, :color 
    remove_index :eye_glasses, :shape
    remove_index :eye_glasses, :who_can_wear
    remove_index :eye_glasses, :image_url

    drop_table :eye_glasses
  end
end
