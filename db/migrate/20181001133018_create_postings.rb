class CreatePostings < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.string :title
      t.string :poster
      t.string :category
      t.string :location
      t.string :status
      t.string :description
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
