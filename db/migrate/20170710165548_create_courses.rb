class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string "cid"
      t.string "cname"
      t.integer "grade_point"
      t.integer "max_students"
      t.integer "min_students"
      t.timestamps
    end
    add_index("courses","cid")
    add_index("courses","cname")
  end
end
