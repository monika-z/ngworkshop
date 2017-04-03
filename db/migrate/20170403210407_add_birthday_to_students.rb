class AddBirthdayToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birthday, :date, :null => true
  end
end
