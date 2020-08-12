class SessionsController < ApplicationController
  # before_action :current_user, except: [ :index ]

  def new
  end

  def create
    if !params[:name] || params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  private

  def current_user
    return head(:forbidden) unless session.include? :user_id
  end
end
