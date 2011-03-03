class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      
      # a client will have a name and a gender
      # a image_url that is synonymous with model
      t.string :user_name, :null => false
      t.string :gender, :null => false
      t.string :image_url
      # A client can have multiple glasses to wear refeneced by the frame_url
      t.string :frame_url

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
