class CreateBlastContactsContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :blast_contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :user, foreign_key: { to_table: :blast_users }

      t.timestamps
    end
  end
end
