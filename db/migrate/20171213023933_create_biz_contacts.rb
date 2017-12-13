class CreateBizContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :biz_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
