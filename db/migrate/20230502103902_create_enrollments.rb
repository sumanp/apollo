class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.references :batch, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :approval

      t.timestamps
    end

    add_index :enrollments, [:batch_id , :user_id], unique: true
  end
end
