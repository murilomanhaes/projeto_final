class MarcacoesController < ApplicationController
      before_filter :authenticate_funcionario!
		def new
			@marcacao = Marcacao.new
		end

		def create
    @marcacao = Marcacao.new(params[:marcacao])

    if @marcacao.save
      flash[:notice] = "Marcacao realizada com sucesso"
      redirect_to @marcacao
    else
      render action:"new"
    end
  end

  def show
    @marcacao = Marcacao.find(params[:id])
  end

  def index
    @marcacoes = Marcacao.all
  end

  def concluir
    		@marcacao = Marcacao.find(params[:id])
  end

  def salvar_conclusao
    @marcacao = Marcacao.find(params[:id])

    respond_to do |format|
      if @marcacao.update_attributes(params[:marcacao])
        format.html { redirect_to @marcacao, notice: 'Marcacao concluida com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "concluir" }
        format.json { render json: @marcacao.errors, status: :unprocessable_entity }
      end
    end
  end

  def concluidas
    @marcacoes = Marcacao.all
  end

  def consultar_concluidas
    data = params[:data].to_date
<<<<<<< HEAD
    puts data
    @marcacoes = Marcacao.where('data = ?', data)
    render 'concluidas'
  end
  
  def consultar_marcadas
    data = params[:data].to_date
    puts data
    @marcacoes = Marcacao.where('data = ?', data)
    render 'index'
  end
=======
    @marcacoes = Marcacao.where('data BETWEEN ? AND ?', data.at_beginning_of_day, data.tomorrow.at_beginning_of_day - 1.second)
    render 'concluidas'
  end
>>>>>>> 169dbefda8a3454a4518ccc4b269b78e286d0abd
end
