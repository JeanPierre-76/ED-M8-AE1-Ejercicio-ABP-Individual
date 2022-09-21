class BeginningsController < ApplicationController
  before_action :set_beginning, only: %i[ show edit update destroy ]

  # GET /beginnings or /beginnings.json
  def index
    @beginnings = Beginning.all
  end

  # GET /beginnings/1 or /beginnings/1.json
  def show
  end

  # GET /beginnings/new
  def new
    @beginning = Beginning.new
  end

  # GET /beginnings/1/edit
  def edit
  end

  # POST /beginnings or /beginnings.json
  def create
    @beginning = Beginning.new(beginning_params)

    respond_to do |format|
      if @beginning.save
        format.html { redirect_to beginning_url(@beginning), notice: "Beginning was successfully created." }
        format.json { render :show, status: :created, location: @beginning }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beginning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beginnings/1 or /beginnings/1.json
  def update
    respond_to do |format|
      if @beginning.update(beginning_params)
        format.html { redirect_to beginning_url(@beginning), notice: "Beginning was successfully updated." }
        format.json { render :show, status: :ok, location: @beginning }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beginning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beginnings/1 or /beginnings/1.json
  def destroy
    @beginning.destroy

    respond_to do |format|
      format.html { redirect_to beginnings_url, notice: "Beginning was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beginning
      @beginning = Beginning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beginning_params
      params.require(:beginning).permit(:name, :correo, :descripcion_de_tu_perfil_hobbies_y_pasiones, :ultimos_dos_trabajos_o_estudios)
    end
end
