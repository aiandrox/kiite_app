class KiitesController < ApplicationController
  def index
    @kiites = Kiite.all
  end

  def new
  end

  def edit
  end
end
