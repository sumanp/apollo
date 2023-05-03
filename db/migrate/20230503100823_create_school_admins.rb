class CreateSchoolAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :school_admins do |t|
      t.references :school, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :school_admins, [:school_id , :user_id], unique: true
  end
end
