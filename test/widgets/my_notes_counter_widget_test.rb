require 'test_helper'

class MyNotesCounterWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:my_notes_counter)
  end
  
  test "display" do
    render_widget :my_notes_counter
    assert_select "h1"
  end
end
