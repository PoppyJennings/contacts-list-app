class ChangePhoneToTextInContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :phone, :text
  end
end
