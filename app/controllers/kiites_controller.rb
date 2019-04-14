class KiitesController < ApplicationController
  def index
    @kiites = Kiite.all.order(id: "DESC")
  end

  def new
    @kiite = Kiite.new
  end

  def create
    @kiite = Kiite.new(kiite_params)
    if @kiite.save
      redirect_to root_path, notice: "投稿しました"
    else
      render :new
    end
  end

  def edit
    @kiite = Kiite.find(params[:id])
  end

  def update
    @kiite = Kiite.find(params[:id])
    @kiite.update!(kiite_params)
    redirect_to root_path, notice: "投稿を編集しました"
  end
  
  def destroy
    kiite = Kiite.find(params[:id])
    kiite.destroy
    redirect_to root_path, notice: "投稿を削除しました"
  end

  def show
    @kiite = Kiite.find(params[:id])
    @comment = Comment.new
  end

  def sokka
    kiite = Kiite.find(params[:id])
    sokka = kiite.sokka
    if sokka== nil
      sokka = 0
    end
    sokka += 1
    kiite.update(sokka: sokka)
    redirect_to root_path
  end

  private
  def kiite_params
    params.require(:kiite).permit(:text, :emoticon)
  end
end
