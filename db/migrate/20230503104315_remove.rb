class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_column :schools, :user_id
  end
end
