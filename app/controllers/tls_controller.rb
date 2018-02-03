class TlsController < ApplicationController
  before_action :set_tl, only: [:show, :edit, :update, :destroy]

  # GET /tls
  # GET /tls.json
  def index
    @tls = Tl.all
  end

  # GET /tls/1
  # GET /tls/1.json
  def show
  end

  # GET /tls/new
  def new
    @tl = Tl.new
  end

  # GET /tls/1/edit
  def edit
  end

  # POST /tls
  # POST /tls.json
  def create
    @tl = Tl.new(tl_params)

    respond_to do |format|
      if @tl.save
        format.html { redirect_to @tl, notice: 'Tl was successfully created.' }
        format.json { render :show, status: :created, location: @tl }
      else
        format.html { render :new }
        format.json { render json: @tl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tls/1
  # PATCH/PUT /tls/1.json
  def update
    respond_to do |format|
      if @tl.update(tl_params)
        format.html { redirect_to @tl, notice: 'Tl was successfully updated.' }
        format.json { render :show, status: :ok, location: @tl }
      else
        format.html { render :edit }
        format.json { render json: @tl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tls/1
  # DELETE /tls/1.json
  def destroy
    @tl.destroy
    respond_to do |format|
      format.html { redirect_to tls_url, notice: 'Tl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tl
      @tl = Tl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tl_params
      params.require(:tl).permit(:first_name, :last_name, :ssdc_no)
    end
end
