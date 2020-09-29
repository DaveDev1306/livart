class ArtWorksController < ApplicationController
  before_action :authenticate_user!

  def index
    @art_works = ArtWork.all
  end

  def show
    @art_work = ArtWork.find(params[:id])
  end

  def new
    @art_work = ArtWork.new(art_work_params)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_art_work
    @art_work = current_user.art_works.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def art_work_params
    params.require(:art_work).permit(:name, :description)
  end
end
