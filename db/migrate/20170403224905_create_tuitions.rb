class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.date :deadline

      t.timestamps null: false
    end
  end
end
