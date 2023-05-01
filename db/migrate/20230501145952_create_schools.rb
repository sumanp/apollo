class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :description
      t.datetime :established_at

      t.timestamps
    end
  end
end
