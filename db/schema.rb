# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090905080316) do

  create_table "pages", :force => true do |t|
    t.text     "text",                           :null => false
    t.string   "url",                            :null => false
    t.string   "title",                          :null => false
    t.string   "keywords"
    t.string   "description"
    t.string   "formatting"
    t.string   "category"
    t.boolean  "published",   :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["url", "id", "published"], :name => "index_pages_on_url_and_id_and_published"

  create_table "sounds", :force => true do |t|
    t.string   "puid"
    t.string   "md5"
    t.string   "title"
    t.string   "artist"
    t.string   "album"
    t.integer  "year"
    t.string   "comment"
    t.integer  "track"
    t.string   "genre"
    t.integer  "duration"
    t.string   "waveform"
    t.string   "tags"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stream_file_name"
    t.string   "stream_content_type"
    t.integer  "stream_file_size"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128
    t.boolean  "email_confirmed",                   :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "url"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id", "confirmation_token"], :name => "index_users_on_id_and_confirmation_token"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
