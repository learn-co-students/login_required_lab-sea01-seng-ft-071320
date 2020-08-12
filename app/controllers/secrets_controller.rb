class SecretsController < ApplicationController
  before_action :handle_login

  def show

  end

  private

  def handle_login
    if !session[:name]
      redirect_to '/login'
    end
  end
end
