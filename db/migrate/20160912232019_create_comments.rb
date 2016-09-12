class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # 'references' automatically creates id key
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
