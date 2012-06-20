class PacientesController < ApplicationController
  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pacientes }
    end
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
    @paciente = Paciente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paciente }
    end
  end

  # GET /pacientes/new
  # GET /pacientes/new.json
  def new
    @paciente = Paciente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paciente }
    end
  end

  # GET /pacientes/1/edit
  def edit
    @paciente = Paciente.find(params[:id])
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(params[:paciente])

    respond_to do |format|
      if @paciente.save
        format.html { redirect_to @paciente, notice: 'Paciente cadastrado com sucesso.' }
        format.json { render json: @paciente, status: :created, location: @paciente }
      else
        format.html { render action: "new" }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pacientes/1
  # PUT /pacientes/1.json
  def update
    @paciente = Paciente.find(params[:id])

    respond_to do |format|
      if @paciente.update_attributes(params[:paciente])
        format.html { redirect_to @paciente, notice: 'Paciente alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy

    respond_to do |format|
      format.html { redirect_to pacientes_url }
      format.json { head :no_content }
    end
  end

  def informacoes
  end

  def consultar
    nome = params[:nome]
    @pacientes = Paciente.where('UPPER(nome) LIKE ?', "%#{nome.upcase}%")
    render 'index'
  end
end
