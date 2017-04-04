class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :student_id
      t.integer :tuition_id

      t.timestamps null: false
    end
  end
end
