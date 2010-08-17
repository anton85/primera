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

ActiveRecord::Schema.define(:version => 20100803061423) do

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "duration"
    t.string   "teacher"
    t.string   "cost"
    t.string   "currency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_contacts", :force => true do |t|
    t.string   "name"
    t.string   "course"
    t.string   "otherCourse"
    t.string   "occupation"
    t.string   "email"
    t.string   "phone"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
  end

  create_table "issues", :force => true do |t|
    t.string   "title"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "screenshot_file_name"
    t.string   "screenshot_content_type"
    t.integer  "screenshot_file_size"
    t.datetime "screenshot_updated_at"
  end

  create_table "occupations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
