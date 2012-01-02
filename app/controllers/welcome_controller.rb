class WelcomeController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget('note_form', 'note_form')
    root << widget('notes', 'my_notes')
  end

  def index
  end
end