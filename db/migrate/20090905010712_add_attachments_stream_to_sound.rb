class AddAttachmentsStreamToSound < ActiveRecord::Migration
  def self.up
    add_column :sounds, :stream_file_name, :string
    add_column :sounds, :stream_content_type, :string
    add_column :sounds, :stream_file_size, :integer
  end

  def self.down
    remove_column :sounds, :stream_file_name
    remove_column :sounds, :stream_content_type
    remove_column :sounds, :stream_file_size
  end
end
