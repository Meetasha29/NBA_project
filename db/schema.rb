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

ActiveRecord::Schema.define(version: 20170711150823) do

  create_table "course1s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "cid"
    t.string   "cname"
    t.integer  "grade_point"
    t.integer  "max_students"
    t.integer  "min_students"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["cid"], name: "index_courses_on_cid", using: :btree
    t.index ["cname"], name: "index_courses_on_cname", using: :btree
  end

  create_table "departments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "did"
    t.string   "dname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["did"], name: "index_departments_on_did", using: :btree
    t.index ["dname"], name: "index_departments_on_dname", using: :btree
  end

  create_table "faculties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "fid"
    t.string   "fname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fid"], name: "index_faculties_on_fid", using: :btree
  end

end
