class AddAdminToBlastUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :blast_users, :admin, :boolean
  end
end
