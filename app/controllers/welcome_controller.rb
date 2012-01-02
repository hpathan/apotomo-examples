class WelcomeController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget('note_form', 'note_form')
    root << widget('notes', 'my_notes')
    root << widget('my_notes_counter', 'my_notes_counter')
  end

  def index
  end
end