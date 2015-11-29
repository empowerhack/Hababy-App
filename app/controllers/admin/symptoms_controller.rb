module Admin
  class SymptomsController < ApplicationController

    def show
      @symptom = Symptom.find(params[:id])
      @advice = @symptom.advices
    end

    def index
      @symptoms = Symptom.all
    end

    def create
      Symptom.create(symptom_params)
      redirect_to admin_symptoms_path
    end

    def new
    end

    def edit
    end

    def destroy
      symptom = Symptom.find(params[:id])
      symptom.destroy
      redirect_to admin_symptoms_path
    end

    private

    def symptom_params
      params.require(:symptom).permit(:title, :description)
    end
  end
end
