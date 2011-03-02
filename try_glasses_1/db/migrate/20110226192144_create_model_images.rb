class CreateModelImages < ActiveRecord::Migration
  def self.up
    create_table :model_images do |t|
      t.string :image_url,  :null => false
      t.string :gender,     :null => false

      t.timestamps
    end
    
    add_index :model_images, :image_url
    add_index :model_images, :gender
  end

  def self.down
    remove_index :model_images, :image_url
    remove_index :model_images, :gender
    
    drop_table :model_images
  end
end
