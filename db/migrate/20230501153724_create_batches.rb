class CreateBatches < ActiveRecord::Migration[7.0]
  def change
    create_table :batches do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end

    add_index :batches, [:course_id , :user_id], unique: true
  end
end
