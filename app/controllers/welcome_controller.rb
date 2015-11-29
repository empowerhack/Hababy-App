class WelcomeController < ApplicationController

  def index
  end

  def english
    session[:language] = "ENG"
  end

  def arabic
    session[:language] = "ARB"
  end
end

