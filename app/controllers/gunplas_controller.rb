class GunplasController < ApplicationController
  PER_PAGE = 9
  def index
    @gunplas = Gunpla.all.page(params[:page]).per(PER_PAGE)
  end
end
