class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :article, foreign_key: true
      t.integer :parent_id, default: 0
      t.boolean :is_approve, default: false
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
