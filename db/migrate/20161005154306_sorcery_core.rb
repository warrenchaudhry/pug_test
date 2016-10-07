class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :first_name,            :null => false
      t.string :last_name,            :null => false
      t.string :country,            :null => false
      t.string :language,            :null => false
      t.boolean :is_paying, default: false
      t.boolean :is_admin, default: false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
