require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Entry.new.valid?
  end
end
