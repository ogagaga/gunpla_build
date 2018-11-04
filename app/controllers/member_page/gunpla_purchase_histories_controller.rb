class MemberPage::GunplaPurchaseHistoriesController < MemberPage::ApplicationController
  PER_PAGE = 5
  def index
    @gunpla_purchase_histories = current_member.gunpla_purchase_histories.page(params[:page]).per(PER_PAGE)
  end

  def new
    @gunpla_purchase_history = current_member.gunpla_purchase_histories.build
  end

  def create
    ApplicationRecord.transaction do
      @gunpla_purchase_history = current_member.gunpla_purchase_histories.build(gunpla_purchase_history_params)
      @gunpla_purchase_history.save!
      redirect_to member_page_gunpla_purchase_histories_path, notice: t('.notice')
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :new
  end

  def edit
    @gunpla_purchase_history = current_member.gunpla_purchase_histories.find(params[:id])
  end

  def update
    ApplicationRecord.transaction do
      @gunpla_purchase_history = current_member.gunpla_purchase_histories.find(params[:id])
      @gunpla_purchase_history.update!(gunpla_purchase_history_params)
      redirect_to member_page_gunpla_purchase_histories_path, notice: '道具を更新しました'
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :edit
  end

  def destroy
    ApplicationRecord.transaction do
      current_member.gunpla_purchase_histories.find(params[:id]).destroy!
      redirect_to member_page_gunpla_purchase_histories_path, notice: '道具を削除しました'
    end
  rescue ActiveRecord::RecordInvalid
    @gunpla_purchase_histories = current_member.gunpla_purchase_histories
    flash.now[:alert] = t('.alert')
    render :index
  end

  private

  def gunpla_purchase_history_params
    params.require(:gunpla_purchase_history).permit(
      :name,
      :reference_price,
      :price,
      :affiliate_amazon_link,
      :image,
      :note,
      :released_on,
      :purchased_on,
    )
  end
end