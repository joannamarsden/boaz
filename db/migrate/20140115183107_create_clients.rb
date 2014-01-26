class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :home_phone
      t.string :mailing_add
      t.string :billing_add

      t.timestamps
    end
  end
end
