class HistoricosController < ApplicationController
  before_action :set_historico, only: [:show, :edit, :update, :destroy]

  # GET /historicos
  # GET /historicos.json
  def index
    @processo = Processo.find(params[:processo_id])
    @historicos = @processo.historicos
  end

  # GET /historicos/1
  # GET /historicos/1.json
  def show
  end

  # GET /historicos/new
  def new
    @historico = Historico.new
  end

  # GET /historicos/1/edit
  def edit
  end

  # POST /historicos
  # POST /historicos.json
  def create
    @processo = Processo.find(params[:processo_id])
    @historico = @processo.historicos.create(historico_params)

    respond_to do |format|
      if @historico.save
        format.html { redirect_to @historico, notice: 'Historico was successfully created.' }
        format.json { render :show, status: :created, location: @historico }
      else
        format.html { redirect_to processo_historicos_url(@processo), notice: 'Unable to update history with empty description.' }
        format.json { render json: @historico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historicos/1
  # PATCH/PUT /historicos/1.json
  def update
    respond_to do |format|
      if @historico.update(historico_params)
        format.html { redirect_to @historico, notice: 'Historico was successfully updated.' }
        format.json { render :show, status: :ok, location: @historico }
      else
        format.html { render :edit }
        format.json { render json: @historico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historicos/1
  # DELETE /historicos/1.json
  def destroy
    @processo = @historico.processo
    @historico.destroy
    respond_to do |format|
      format.html { redirect_to processo_historicos_url(@processo), notice: 'Historico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico
      @historico = Historico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historico_params
      params.require(:historico).permit(:descricao, :processo_id)
    end
end
