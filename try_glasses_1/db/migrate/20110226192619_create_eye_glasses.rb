class CreateEyeGlasses < ActiveRecord::Migration
  def self.up
    create_table :eye_glasses do |t|
      t.string :name
      t.string :material
      t.string :color
      t.string :shape
      t.decimal :price
      t.string :who_can_wear
      t.string :image_url
	  t.string : brand

      t.timestamps
    end
  end

  def self.down
    drop_table :eye_glasses
  end
end
