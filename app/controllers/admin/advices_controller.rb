module Admin
  class AdvicesController < ApplicationController

    def index
      @advices = Advice.all
    end

    def create
      Advice.create(advice_params)
      redirect_to admin_advices_path
    end

    def new
      @symptoms = Symptom.all
      @countries = Country.all
      @topics = Topic.all
    end

    def edit
    end

    def destroy
      advice = Advice.find(params[:id])
      advice.destroy
      redirect_to admin_advices_path
    end

    def advice_params
      params.require(:advice).permit(:title, :description, :country_id, :symptom_id, :topic_id)
    end

  end
end