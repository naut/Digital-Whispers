require 'test_helper'

class OriginalImageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert OriginalImage.new.valid?
  end
end
