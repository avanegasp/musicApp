class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artist do |t|
      t.string :name
      t.string :video_url

      t.timestamps 
    end
  end
end
