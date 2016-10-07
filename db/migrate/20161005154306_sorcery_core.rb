class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :language
      t.string :age
      t.boolean :is_paying, default: false
      t.boolean :is_admin, default: false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
