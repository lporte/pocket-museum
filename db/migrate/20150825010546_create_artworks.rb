class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
    	t.string :title
    	t.string :artist
    	t.string :date
    	t.string :img_url
    	t.integer :user_id
    	t.text :description
    	t.boolean :featured, default: false

      t.timestamps
    end
  end
end
