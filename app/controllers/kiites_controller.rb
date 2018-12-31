class KiitesController < ApplicationController
  def index
    @kiites = Kiite.all
  end

  def new
    @kiite = Kiite.new
  end

  def create
    kiite = Kiite.new(kiite_params)
    kiite.save
    redirect_to root_path, notice: "投稿しました"
  end

  def edit
    @kiite = Kiite.find(params[:id])
  end

  def update
    kiite = Kiite.find(params[:id])
    kiite.update(kiite_params)
    redirect_to root_path, notice: "投稿を編集しました"
  end

  private
  def kiite_params
    params.require(:kiite).permit(:text)
  end
  
end
