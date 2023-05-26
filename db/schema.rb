# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_26_170728) do
  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_exercises", id: false, force: :cascade do |t|
    t.integer "equipment_id", null: false
    t.integer "exercise_id", null: false
    t.index ["equipment_id", "exercise_id"], name: "index_equipment_exercises_on_equipment_id_and_exercise_id"
    t.index ["exercise_id", "equipment_id"], name: "index_equipment_exercises_on_exercise_id_and_equipment_id"
  end

  create_table "exercise_equipments", force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "equipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_exercise_equipments_on_equipment_id"
    t.index ["exercise_id"], name: "index_exercise_equipments_on_exercise_id"
  end

  create_table "exercise_secondary_muscle_groups", force: :cascade do |t|
    t.integer "exercise_id", null: false
    t.integer "muscle_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_secondary_muscle_groups_on_exercise_id"
    t.index ["muscle_group_id"], name: "index_exercise_secondary_muscle_groups_on_muscle_group_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.string "video_url"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "primary_muscle_group_id"
    t.integer "secondary_muscle_group_ids"
    t.integer "equipment_ids"
    t.index ["primary_muscle_group_id"], name: "index_exercises_on_primary_muscle_group_id"
    t.index ["secondary_muscle_group_ids"], name: "index_exercises_on_secondary_muscle_group_ids"
  end

  create_table "exercises_muscle_groups", id: false, force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "muscle_group_id"
    t.index ["exercise_id", "muscle_group_id"], name: "index_exercises_muscle_groups_on_exercise_id_and_muscle_group_id", unique: true
    t.index ["exercise_id"], name: "index_exercises_muscle_groups_on_exercise_id"
    t.index ["muscle_group_id"], name: "index_exercises_muscle_groups_on_muscle_group_id"
  end

  create_table "muscle_groups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_progresses_on_user_id"
    t.index ["workout_id"], name: "index_progresses_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "profile_picture"
    t.string "gender"
    t.integer "age"
    t.float "height"
    t.float "weight"
    t.string "fitness_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "workout_exercises", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_sets", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
    t.integer "reps"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.string "exercise_ids"
    t.integer "duration"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exercise_id"
    t.integer "progress_id"
    t.index ["exercise_id"], name: "index_workouts_on_exercise_id"
    t.index ["progress_id"], name: "index_workouts_on_progress_id"
  end

  add_foreign_key "exercise_equipments", "equipment"
  add_foreign_key "exercise_equipments", "exercises"
  add_foreign_key "exercise_secondary_muscle_groups", "exercises"
  add_foreign_key "exercise_secondary_muscle_groups", "muscle_groups"
  add_foreign_key "exercises", "muscle_groups", column: "primary_muscle_group_id"
  add_foreign_key "exercises", "muscle_groups", column: "secondary_muscle_group_ids", on_delete: :nullify
  add_foreign_key "progresses", "users"
  add_foreign_key "progresses", "workouts"
  add_foreign_key "workout_exercises", "workouts"
  add_foreign_key "workouts", "exercises"
  add_foreign_key "workouts", "progresses"
end
