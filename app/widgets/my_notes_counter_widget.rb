class MyNotesCounterWidget < Apotomo::Widget
  responds_to_event :new_note, :with => :update, :passing => :root

  def display
    @count = Note.count
    render
  end

  def update
    replace :state => :display
  end

end
