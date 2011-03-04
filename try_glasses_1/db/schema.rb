# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110226193439) do

  create_table "clients", :force => true do |t|
    t.string   "user_name",  :null => false
    t.string   "gender",     :null => false
    t.string   "image_url"
    t.string   "frame_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eye_glasses", :force => true do |t|
    t.string   "name",                                       :null => false
    t.string   "material",                                   :null => false
    t.string   "color",                                      :null => false
    t.string   "shape",                                      :null => false
    t.decimal  "price",        :precision => 6, :scale => 2, :null => false
    t.string   "who_can_wear",                               :null => false
    t.string   "image_url",                                  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "eye_glasses", ["color"], :name => "index_eye_glasses_on_color"
  add_index "eye_glasses", ["image_url"], :name => "index_eye_glasses_on_image_url"
  add_index "eye_glasses", ["material"], :name => "index_eye_glasses_on_material"
  add_index "eye_glasses", ["name"], :name => "index_eye_glasses_on_name"
  add_index "eye_glasses", ["shape"], :name => "index_eye_glasses_on_shape"
  add_index "eye_glasses", ["who_can_wear"], :name => "index_eye_glasses_on_who_can_wear"

  create_table "model_images", :force => true do |t|
    t.string   "image_url",  :null => false
    t.string   "gender",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "model_images", ["gender"], :name => "index_model_images_on_gender"
  add_index "model_images", ["image_url"], :name => "index_model_images_on_image_url"

end
