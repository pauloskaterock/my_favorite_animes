class CreateMyFavoriteAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :my_favorite_animes do |t|
      t.string :title
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
