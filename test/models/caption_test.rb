require 'test_helper'

class CaptionTest < ActiveSupport::TestCase
  def setup
  	@caption = Caption.new(section: "foundation", content: "some example text", title: "lorem ipsum")
  end

  test "caption should be valid" do
  	assert @caption.valid?
  end

  test "caption content should be present" do
  	@caption.content = "    "
  	assert_not @caption.valid?
  end

  test "caption title should be present" do
  	@caption.title = ""
  	assert_not @caption.valid?
  end
end
