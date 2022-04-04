class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.integer :phone

      t.timestamps
    end
  end
end
