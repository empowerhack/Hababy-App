class SymptomsController < ApplicationController

  def index
    @symptoms = Symptom.all
  end

end