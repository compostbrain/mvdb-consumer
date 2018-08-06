class CreatePopularTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :popular_tv_shows do |t|
      t.string :name
      t.json :properties

      t.timestamps
    end
  end
end
