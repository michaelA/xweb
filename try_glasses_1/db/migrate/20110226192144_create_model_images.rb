class CreateModelImages < ActiveRecord::Migration
  def self.up
    create_table :model_images do |t|
      t.string :image_url
      t.string :gender

      t.timestamps
    end
  end

  def self.down
    drop_table :model_images
  end
end
