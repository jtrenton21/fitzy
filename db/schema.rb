# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130917201631) do

  create_table "applied_roles", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "role_id"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "applied_roles", ["resource_type", "resource_id"], :name => "index_applied_roles_on_resource_type_and_resource_id"
  add_index "applied_roles", ["subject_id"], :name => "index_applied_roles_on_subject_id"

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.string   "exercise_type"
    t.string   "body_target"
    t.string   "muscle_target"
    t.string   "outside_link"
    t.text     "info"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
  end

  add_index "exercises", ["user_id"], :name => "index_exercises_on_user_id"

  create_table "exerciseworkouts", :force => true do |t|
    t.integer  "exercise_id"
    t.integer  "workout_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "exerciseworkouts", ["exercise_id"], :name => "index_exerciseworkouts_on_exercise_id"
  add_index "exerciseworkouts", ["workout_id"], :name => "index_exerciseworkouts_on_workout_id"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "reps", :force => true do |t|
    t.integer  "rep_amount"
    t.integer  "rep_weight"
    t.integer  "set_rest"
    t.integer  "exercise_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "routines", :force => true do |t|
    t.integer  "user_id"
    t.integer  "exerciseworkout_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "routines", ["exerciseworkout_id"], :name => "index_routines_on_exerciseworkout_id"
  add_index "routines", ["user_id"], :name => "index_routines_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "bday"
    t.string   "gender"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "workouts", :force => true do |t|
    t.string   "name"
    t.string   "workout_focus"
    t.integer  "day"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
  end

  add_index "workouts", ["user_id"], :name => "index_workouts_on_user_id"

end
