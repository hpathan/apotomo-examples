class NotesWidget < Apotomo::Widget
  responds_to_event :new_note, :with => :update, :passing => :root

  def display
    @notes = Note.all
    render
  end
  
  def update
    replace :state => :display
  end

end
