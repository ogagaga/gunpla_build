class MemberPage::GunplasController < MemberPage::ApplicationController
  helper_method :sort_column, :sort_direction
  PER_PAGE = 5

  def index
    @gunplas = current_member.gunplas.order(sort_column + ' ' + sort_direction).page(params[:page]).per(PER_PAGE)
    @total_price = current_member.gunplas.sum(:price)
  end

  def new
    @gunpla = current_member.gunplas.build
  end

  def create
    ApplicationRecord.transaction do
      @gunpla = current_member.gunplas.build(gunpla_params)
      @gunpla.save!
      redirect_to member_page_gunplas_path, notice: t('.notice')
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :new
  end

  def edit
    @gunpla = current_member.gunplas.find(params[:id])
  end

  def update
    ApplicationRecord.transaction do
      @gunpla = current_member.gunplas.find(params[:id])
      @gunpla.update!(gunpla_params)
      redirect_to member_page_gunplas_path, notice: '道具を更新しました'
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :edit
  end

  def destroy
    ApplicationRecord.transaction do
      current_member.gunplas.find(params[:id]).destroy!
      redirect_to member_page_gunplas_path, notice: '道具を削除しました'
    end
  rescue ActiveRecord::RecordInvalid
    @gunplas = current_member.gunplas
    flash.now[:alert] = t('.alert')
    render :index
  end

  private

  def gunpla_params
    params.require(:gunpla).permit(
      :name,
      :reference_price,
      :price,
      :affiliate_amazon_link,
      :image,
      :note,
      :released_on,
      :purchased_on,
      :bandai_product_url
    )
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : 'asc'
  end

  def sort_column
    Gunpla.column_names.include?(params[:sort]) ? params[:sort] : 'name'
  end
end
