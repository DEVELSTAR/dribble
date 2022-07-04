class AddShotToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :shot_id, :integer
  end
end
