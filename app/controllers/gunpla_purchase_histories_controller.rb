class GunplaPurchaseHistoriesController < ApplicationController
  PER_PAGE = 10
  def index
    @gunpla_purchase_histories = GunplaPurchaseHistory.all.page(params[:page]).per(PER_PAGE)
  end
end