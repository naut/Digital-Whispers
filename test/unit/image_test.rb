require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Image.new.valid?
  end
end
