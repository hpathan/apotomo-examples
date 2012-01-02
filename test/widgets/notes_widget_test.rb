require 'test_helper'

class NotesWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:notes)
  end
  
  test "display" do
    render_widget :notes
    assert_select "h1"
  end
end
