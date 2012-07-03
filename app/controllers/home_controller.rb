class HomeController < ApplicationController
  before_filter :authenticate_funcionario!
	def index

  end
end
