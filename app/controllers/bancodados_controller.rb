class BancodadosController < ApplicationController
  before_action :set_bancodado, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /bancodados or /bancodados.json
  def index
    @bancodados = Bancodado.all
  end

  # GET /bancodados/1 or /bancodados/1.json
  def show
  end

  # GET /bancodados/new
  def new
    #@bancodado = Bancodado.new
    @bancodado = current_user.bancodados.build
  end

  # GET /bancodados/1/edit
  def edit
  end

  # POST /bancodados or /bancodados.json
  def create
    #@bancodado = Bancodado.new(bancodado_params)
    @bancodado = current_user.bancodados.build(bancodado_params)

    respond_to do |format|
      if @bancodado.save
        format.html { redirect_to bancodado_url(@bancodado), notice: "Bancodado was successfully created." }
        format.json { render :show, status: :created, location: @bancodado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bancodado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bancodados/1 or /bancodados/1.json
  def update
    respond_to do |format|
      if @bancodado.update(bancodado_params)
        format.html { redirect_to bancodado_url(@bancodado), notice: "Bancodado was successfully updated." }
        format.json { render :show, status: :ok, location: @bancodado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bancodado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bancodados/1 or /bancodados/1.json
  def destroy
    @bancodado.destroy

    respond_to do |format|
      format.html { redirect_to bancodados_url, notice: "Bancodado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @bancodado = current_user.bancodados.find_by(id: params[:id])
    redirect_to bancodados_path, notice: "Not authorized to edit this Friend" if @bancodado.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bancodado
      @bancodado = Bancodado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bancodado_params
      params.require(:bancodado).permit(:nome, :cpf, :nascimento, :genero, :rg, :entidade, :user_id)
    end
end
