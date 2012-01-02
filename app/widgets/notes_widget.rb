class NotesWidget < Apotomo::Widget
  responds_to_event :new_note, :with => :update, :passing => :root
  responds_to_event :typing, :with => :filter, :passing => :root

  def display
    @notes = Note.all
    render
  end

  def update
    replace :state => :display
  end

  def filter
    @notes = Note.where("title like ?", "#{params[:query]}%")
    replace :state => :list
  end

  def list
    render
  end

end
