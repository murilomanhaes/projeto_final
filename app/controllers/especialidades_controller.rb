class EspecialidadesController < ApplicationController

  load_and_authorize_resource 
  before_filter :authenticate_funcionario!
  
  # GET /especialidades
  # GET /especialidades.json
  def index
    @especialidades = Especialidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @especialidades }
    end
  end

  # GET /especialidades/1
  # GET /especialidades/1.json
  def show
    @especialidade = Especialidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @especialidade }
    end
  end

  # GET /especialidades/new
  # GET /especialidades/new.json
  def new
    @especialidade = Especialidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @especialidade }
    end
  end

  # GET /especialidades/1/edit
  def edit
    @especialidade = Especialidade.find(params[:id])
  end

  # POST /especialidades
  # POST /especialidades.json
  def create
    @especialidade = Especialidade.new(params[:especialidade])

    respond_to do |format|
      if @especialidade.save
        format.html { redirect_to @especialidade, notice: 'Especialidade cadastrada com sucesso.' }
        format.json { render json: @especialidade, status: :created, location: @especialidade }
      else
        format.html { render action: "new" }
        format.json { render json: @especialidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /especialidades/1
  # PUT /especialidades/1.json
  def update
    @especialidade = Especialidade.find(params[:id])

    respond_to do |format|
      if @especialidade.update_attributes(params[:especialidade])
        format.html { redirect_to @especialidade, notice: 'Especialidade alterada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @especialidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidades/1
  # DELETE /especialidades/1.json
  def destroy
    @especialidade = Especialidade.find(params[:id])
    @especialidade.destroy

    respond_to do |format|
      format.html { redirect_to especialidades_url }
      format.json { head :no_content }
    end
  end
end
