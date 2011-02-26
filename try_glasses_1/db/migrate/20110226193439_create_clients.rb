class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :user_name
      t.string :gender
      t.string :image_url
      t.string :frame_url

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
