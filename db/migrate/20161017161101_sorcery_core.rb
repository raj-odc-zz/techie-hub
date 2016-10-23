class SorceryCore < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :email,            :null => false
      t.string :username
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :authors, :email, unique: true
  end
end