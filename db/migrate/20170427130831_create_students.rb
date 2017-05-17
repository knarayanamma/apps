class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :sname
      t.string :sid
      t.string :sbranch

      t.timestamps
    end
  end
end
