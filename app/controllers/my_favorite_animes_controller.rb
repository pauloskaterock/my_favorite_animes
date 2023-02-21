class MyFavoriteAnimesController < ApplicationController
  before_action :set_my_favorite_anime, only: %i[ show edit update destroy ]

  # GET /my_favorite_animes or /my_favorite_animes.json
  def index
    @my_favorite_animes = MyFavoriteAnime.all
  end

  # GET /my_favorite_animes/1 or /my_favorite_animes/1.json
  def show
  end

  # GET /my_favorite_animes/new
  def new
    @my_favorite_anime = MyFavoriteAnime.new
  end

  # GET /my_favorite_animes/1/edit
  def edit
  end

  # POST /my_favorite_animes or /my_favorite_animes.json
  def create
    @my_favorite_anime = MyFavoriteAnime.new(my_favorite_anime_params)

    respond_to do |format|
      if @my_favorite_anime.save
        format.html { redirect_to my_favorite_anime_url(@my_favorite_anime), notice: "My favorite anime was successfully created." }
        format.json { render :show, status: :created, location: @my_favorite_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_favorite_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_favorite_animes/1 or /my_favorite_animes/1.json
  def update
    respond_to do |format|
      if @my_favorite_anime.update(my_favorite_anime_params)
        format.html { redirect_to my_favorite_anime_url(@my_favorite_anime), notice: "My favorite anime was successfully updated." }
        format.json { render :show, status: :ok, location: @my_favorite_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_favorite_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_favorite_animes/1 or /my_favorite_animes/1.json
  def destroy
    @my_favorite_anime.destroy

    respond_to do |format|
      format.html { redirect_to my_favorite_animes_url, notice: "My favorite anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_favorite_anime
      @my_favorite_anime = MyFavoriteAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_favorite_anime_params
      params.require(:my_favorite_anime).permit(:title, :description, :text)
    end
end
