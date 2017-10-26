class CreateCommentaries < ActiveRecord::Migration[5.0]
  def change
    create_table :commentaries do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
