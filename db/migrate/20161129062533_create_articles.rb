class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end


rails g model comment detail:string request:references user:references --force
