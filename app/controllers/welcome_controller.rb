class WelcomeController < ApplicationController

  def index
  end

  def english
    session[:language] = "ENG"
    redirect_to terms_path
  end

  def arabic
    session[:language] = "ARB"
    redirect_to terms_path
  end
end

