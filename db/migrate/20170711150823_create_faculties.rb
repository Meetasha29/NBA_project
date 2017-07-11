class CreateFaculties < ActiveRecord::Migration[5.0]
  def change
    create_table :faculties do |t|
      t.string "fid"
      t.string "fname"
      t.timestamps
    end
    add_index("faculties","fid")
  end
end
