class NoteFormWidget < Apotomo::Widget
  responds_to_event :submit, :with => :update

  def display
    render
  end

  def update
    note = Note.new({:title => params[:entry]})
    note.save
    trigger :new_note
  end
end
