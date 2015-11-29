module Admin
  class CountriesController < ApplicationController

    def index
      @countries = Country.all
    end

    def create
      Country.create(country_params)
      redirect_to admin_countries_path
    end

    def new
    end

    def edit
    end

    def destroy
      country = Country.find(params[:id])
      country.destroy
      redirect_to admin_countries_path
    end

    def country_params
      params.require(:country).permit(:iso, :iso3, :name)
    end

  end
end