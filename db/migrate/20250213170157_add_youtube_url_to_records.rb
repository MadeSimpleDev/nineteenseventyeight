class AddYoutubeUrlToRecords < ActiveRecord::Migration[8.0]
  def change
    add_column :records, :youtube_url, :string
  end
end
