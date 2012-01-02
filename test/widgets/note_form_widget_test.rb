require 'test_helper'

class NoteFormWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:note_form)
  end
  
  test "display" do
    render_widget :note_form
    assert_select "h1"
  end
end
