class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string "did"
      t.string "dname"
      t.timestamps
    end
    add_index("departments","did")
    add_index("departments","dname")
  end
end
