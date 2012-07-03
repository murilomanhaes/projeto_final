# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do
    redirect_to root_path
    flash[:notice] = 'Você não tem acesso a esta página'
  end
  
  def current_user
    current_funcionario
  end
end
