class CountriesController < ApplicationController

  def index
    @countries = Project.search(params[:search])
  end

end