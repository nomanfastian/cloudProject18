class ResturantsController < ApplicationController
  before_action :set_resturant, only: [:show, :edit, :update, :destroy]

  # GET /resturants
  # GET /resturants.json
  def index
    @resturants = Resturant.all
  end

  # GET /resturants/1
  # GET /resturants/1.json
  def show
    @reviews = @resturant.reviews
  end

  # GET /resturants/new
  def new
    @resturant = Resturant.new
  end

  # GET /resturants/1/edit
  def edit
  end

  def manage_resturants
    @resturants = current_user.resturants
  end

  def create_review
    @resturant = Resturant.find(params[:id])
    @review = @resturant.reviews.create(user_id:current_user.id, description:params[:review][:description])
    redirect_to @resturant
  end
  # POST /resturants
  # POST /resturants.json
  def create
    @resturant = current_user.resturants.new(resturant_params)

    respond_to do |format|
      if @resturant.save
        format.html { redirect_to @resturant, notice: 'Resturant was successfully created.' }
        format.json { render :show, status: :created, location: @resturant }
      else
        format.html { render :new }
        format.json { render json: @resturant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resturants/1
  # PATCH/PUT /resturants/1.json
  def update
    respond_to do |format|
      if @resturant.update(resturant_params)
        format.html { redirect_to @resturant, notice: 'Resturant was successfully updated.' }
        format.json { render :show, status: :ok, location: @resturant }
      else
        format.html { render :edit }
        format.json { render json: @resturant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resturants/1
  # DELETE /resturants/1.json
  def destroy
    @resturant.destroy
    respond_to do |format|
      format.html { redirect_to resturants_url, notice: 'Resturant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resturant
      @resturant = Resturant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resturant_params
      params.require(:resturant).permit(:name, :avatar,:location_id)
    end
end
