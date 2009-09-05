class CreateSounds < ActiveRecord::Migration
  def self.up
    create_table :sounds do |t|
      t.string :puid
      t.string :md5
      t.string :title
      t.string :artist
      t.string :album
      t.integer :year
      t.string :comment
      t.integer :track
      t.string :genre
      t.integer :duration
      t.string :waveform
      t.string :tags
      t.string :category

      t.timestamps
    end
  end

  def self.down
    drop_table :sounds
  end
end
