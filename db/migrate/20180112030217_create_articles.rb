class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :price
      t.belongs_to :owner, index: true
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :articles, :owners
  end
end
