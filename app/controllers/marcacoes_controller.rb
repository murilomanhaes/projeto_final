class MarcacoesController < ApplicationController
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

end
