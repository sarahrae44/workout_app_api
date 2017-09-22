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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170921185802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string "musclename"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "exercisename"
    t.string "img"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration"
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "body_id"
    t.bigint "exercise_id"
    t.string "groupname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "muscle_group_id"
    t.index ["body_id"], name: "index_groups_on_body_id"
    t.index ["exercise_id"], name: "index_groups_on_exercise_id"
  end

  create_table "muscle_groups", force: :cascade do |t|
    t.string "muscleGroupName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userexercises", force: :cascade do |t|
    t.string "user"
    t.string "references"
    t.string "group"
    t.string "usergroupid"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usergroups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.string "usergroupid"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_usergroups_on_group_id"
    t.index ["user_id"], name: "index_usergroups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "savedexercisesname"
    t.string "savedexercisesmuscle"
    t.string "savedexercisesgroup"
    t.string "savedexercisesdesc"
  end

  create_table "usersaves", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.integer "usergroupid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_usersaves_on_group_id"
    t.index ["user_id"], name: "index_usersaves_on_user_id"
  end

  add_foreign_key "groups", "bodies"
  add_foreign_key "groups", "exercises"
  add_foreign_key "usergroups", "groups"
  add_foreign_key "usersaves", "groups"
  add_foreign_key "usersaves", "users"
end
