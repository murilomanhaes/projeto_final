class ExamesController < ApplicationController
      before_filter :authenticate_funcionario!
		def new
			@exame = Exame.new
		end

		def create
    @exame = Exame.new(params[:exame])

    if @exame.save
      flash[:notice] = "Exame realizado com sucesso"
      redirect_to @exame
    else
      render action:"new"
    end
  end

  def show
    @exame = Exame.find(params[:id])
  end

  def index
    @exames = Exame.all
  end
  
  def concluir
    		@exame = Exame.find(params[:id])
  end

  def salvar_conclusao
    @exame = Exame.find(params[:id])

    respond_to do |format|
      if @exame.update_attributes(params[:exame])
        format.html { redirect_to @exame, notice: 'Exame concluido com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "concluir" }
        format.json { render json: @exame.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def concluidas
    @exames = Exame.all
  end

  def consultar_concluidas
    data = params[:data].to_date
    puts data
    @exames = Exame.where('data = ?', data)
    render 'concluidas'
  end
  
  def consultar_marcadas
    data = params[:data].to_date
    puts data
    @exames = Exame.where('data = ?', data)
    render 'index'
  end
  
end
