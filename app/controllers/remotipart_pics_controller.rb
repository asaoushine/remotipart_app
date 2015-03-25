class RemotipartPicsController < ApplicationController
  before_action :set_remotipart_pic, only: [:show, :edit, :update, :destroy]

  # GET /remotipart_pics
  # GET /remotipart_pics.json
  def index
    @remotipart_pics = RemotipartPic.all
  end

  # GET /remotipart_pics/1
  # GET /remotipart_pics/1.json
  def show
  end

  # GET /remotipart_pics/new
  def new
    @remotipart_pic = RemotipartPic.new
  end

  # GET /remotipart_pics/1/edit
  def edit
  end

  # POST /remotipart_pics
  # POST /remotipart_pics.json
  def create
    @remotipart_pic = RemotipartPic.new(remotipart_pic_params)

    respond_to do |format|
      if @remotipart_pic.save
        format.html { redirect_to @remotipart_pic, notice: 'Remotipart pic was successfully created.' }
        format.json { render :show, status: :created, location: @remotipart_pic }
      else
        format.html { render :new }
        format.json { render json: @remotipart_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remotipart_pics/1
  # PATCH/PUT /remotipart_pics/1.json
  def update
    respond_to do |format|
      if @remotipart_pic.update(remotipart_pic_params)
        format.html { redirect_to @remotipart_pic, notice: 'Remotipart pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @remotipart_pic }
      else
        format.html { render :edit }
        format.json { render json: @remotipart_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remotipart_pics/1
  # DELETE /remotipart_pics/1.json
  def destroy
    @remotipart_pic.destroy
    respond_to do |format|
      format.html { redirect_to remotipart_pics_url, notice: 'Remotipart pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remotipart_pic
      @remotipart_pic = RemotipartPic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remotipart_pic_params
      params.require(:remotipart_pic).permit(:title, :description, :topimage)
    end
end
