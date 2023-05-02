class RemoveUserFromBatch < ActiveRecord::Migration[7.0]
  def change
    remove_column :batches, :user_id
  end
end
