class CreateBlastTasksTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :blast_tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: { to_table: :blast_users }
      t.references :contact, foreign_key: { to_table: :blast_contacts_contacts }

      t.timestamps
    end
  end
end
