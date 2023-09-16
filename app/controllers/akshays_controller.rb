class AkshaysController < ApplicationController
  before_action :set_akshay, only: %i[ show edit update destroy ]

  # GET /akshays or /akshays.json
  def index
    @akshays = Akshay.all
  end

  # GET /akshays/1 or /akshays/1.json
  def show
  end

  # GET /akshays/new
  def new
    @akshay = Akshay.new
  end

  # GET /akshays/1/edit
  def edit
  end

  # POST /akshays or /akshays.json
  def create
    @akshay = Akshay.new(akshay_params)

    respond_to do |format|
      if @akshay.save
        format.html { redirect_to akshay_url(@akshay), notice: "Akshay was successfully created." }
        format.json { render :show, status: :created, location: @akshay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @akshay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /akshays/1 or /akshays/1.json
  def update
    respond_to do |format|
      if @akshay.update(akshay_params)
        format.html { redirect_to akshay_url(@akshay), notice: "Akshay was successfully updated." }
        format.json { render :show, status: :ok, location: @akshay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @akshay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akshays/1 or /akshays/1.json
  def destroy
    @akshay.destroy

    respond_to do |format|
      format.html { redirect_to akshays_url, notice: "Akshay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_akshay
      @akshay = Akshay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def akshay_params
      params.require(:akshay).permit(:name, :age)
    end
end
