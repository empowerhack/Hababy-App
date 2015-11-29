module Admin
  class TermsController < ApplicationController

    def index
      @terms = Term.all
    end

    def create
      Term.create(term_params)
      redirect_to admin_countries_path
    end

    def new
    end

    def edit
    end

    def destroy
      term = Term.find(params[:id])
      term.destroy
      redirect_to admin_countries_path
    end

    def term_params
      params.require(:term).permit(:iso, :iso3, :name)
    end

  end
end