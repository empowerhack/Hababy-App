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
      @symptom = Symptom.find(params[:id])
    end

    def update
      @symptom = Symptom.find(params[:id])
      if @symptom.update(symptom_params)
        redirect_to admin_symptoms_path
      else
        render 'edit'
      end
    end

    def destroy
      symptom = Symptom.find(params[:id])
      symptom.destroy
      redirect_to admin_symptoms_path
    end

    private

    def symptom_params
      params.require(:symptom).permit(:title, :description, :term_id)
    end
  end
end
