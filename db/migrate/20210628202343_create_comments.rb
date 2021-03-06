class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.integer :rating
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
