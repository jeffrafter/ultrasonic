require 'test_helper'

class SoundTest < ActiveSupport::TestCase
  should_have_attached_file :stream
  should_validate_attachment_presence :stream
  should_validate_attachment_content_type :stream, :valid => ['audio/mpeg'], :invalid => ['audio/x-mpeg-3']
  should_validate_attachment_size :stream, :less_than => 5.megabytes
end
