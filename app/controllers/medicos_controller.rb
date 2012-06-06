class MedicosController < ApplicationController
  # GET /medicos
  # GET /medicos.json
  def index
    @medicos = Medico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medicos }
    end
  end

  # GET /medicos/1
  # GET /medicos/1.json
  def show
    @medico = Medico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medico }
    end
  end

  # GET /medicos/new
  # GET /medicos/new.json
  def new
    @medico = Medico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medico }
    end
  end

  # GET /medicos/1/edit
  def edit
    @medico = Medico.find(params[:id])
  end

  # POST /medicos
  # POST /medicos.json
  def create
    @medico = Medico.new(params[:medico])

    respond_to do |format|
      if @medico.save
        format.html { redirect_to @medico, notice: 'Medico cadastrado com sucesso.' }
        format.json { render json: @medico, status: :created, location: @medico }
      else
        format.html { render action: "new" }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medicos/1
  # PUT /medicos/1.json
  def update
    @medico = Medico.find(params[:id])

    respond_to do |format|
      if @medico.update_attributes(params[:medico])
        format.html { redirect_to @medico, notice: 'Medico alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos/1
  # DELETE /medicos/1.json
  def destroy
    @medico = Medico.find(params[:id])
    @medico.destroy

    respond_to do |format|
      format.html { redirect_to medicos_url }
      format.json { head :no_content }
    end
  end

  def informacoes

  end
end
