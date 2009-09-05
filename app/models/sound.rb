class Sound < ActiveRecord::Base
  has_attached_file :stream
  validates_attachment_presence :stream
  validates_attachment_size :stream, :less_than => 5.megabytes
  validates_attachment_content_type :stream, :content_type => ['audio/mpeg']
end
