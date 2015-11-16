class RenameUserType < ActiveRecord::Migration
  def change
    rename_column :users, :type, :subscriber_type
  end
end
