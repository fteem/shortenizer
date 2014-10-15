class AddShortenizerUrlsTable < ActiveRecord::Migration
  def change
    create_table :shortenizer_urls do |t|
      t.string :shortlink
      t.string :target
    end
  end
end
