class SymptomsController < ApplicationController

  def index
    @symptoms = Symptom.all
  end

  def show
    @symptom = Symptom.find(params[:id])
    @advices = @symptom.advices
  end
end