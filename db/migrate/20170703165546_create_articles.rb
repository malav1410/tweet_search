class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :author
      t.text :title
      t.text :des
      t.text :url
      t.text :url_to_image

      t.timestamps
    end
  end
end
