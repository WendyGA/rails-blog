class ArticiclesController < ApplicationController
  before_action :set_articicle, only: %i[ show edit update destroy ]

  # GET /articicles or /articicles.json
  def index
    @articicles = Articicle.all
  end

  # GET /articicles/1 or /articicles/1.json
  def show
  end

  # GET /articicles/new
  def new
    @articicle = Articicle.new
  end

  # GET /articicles/1/edit
  def edit
  end

  # POST /articicles or /articicles.json
  def create
    @articicle = Articicle.new(articicle_params)

    respond_to do |format|
      if @articicle.save
        format.html { redirect_to @articicle, notice: "Articicle was successfully created." }
        format.json { render :show, status: :created, location: @articicle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articicles/1 or /articicles/1.json
  def update
    respond_to do |format|
      if @articicle.update(articicle_params)
        format.html { redirect_to @articicle, notice: "Articicle was successfully updated." }
        format.json { render :show, status: :ok, location: @articicle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articicles/1 or /articicles/1.json
  def destroy
    @articicle.destroy
    respond_to do |format|
      format.html { redirect_to articicles_url, notice: "Articicle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articicle
      @articicle = Articicle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articicle_params
      params.require(:articicle).permit(:tile, :body)
    end
end
