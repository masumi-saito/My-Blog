class CreatePhotoBooths < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_booths do |t|
      t.string :title
      t.string :photo

      t.timestamps
    end
  end
end
