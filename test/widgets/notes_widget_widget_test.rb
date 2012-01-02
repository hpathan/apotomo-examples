require 'test_helper'

class NotesWidgetWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:notes_widget)
  end
  
  test "display" do
    render_widget :notes_widget
    assert_select "h1"
  end
end
