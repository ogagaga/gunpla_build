class MemberPage::ProductionRecordsController < MemberPage::ApplicationController

  def new
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
    @production_record = @gunpla.production_process.production_records.build
  end

  def create
    ApplicationRecord.transaction do
      @gunpla = current_member.gunplas.find(params[:gunpla_id])
      @production_record = @gunpla.production_process.production_records.build(production_record_params)

      @production_record.save!
      redirect_to [:member_page, @gunpla, :production_process], notice: t('.notice')
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :new
  end

  def edit
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
    @production_record = @gunpla.production_process.production_records.find(params[:id]) || @gunpla.production_process.production_records.build
  end

  def update
  #   ApplicationRecord.transaction do
  #     @gunpla = current_member.gunplas.find(params[:gunpla_id])
  #     @production_process = @gunpla.production_process || @gunpla.build_production_process
  #     @production_process.update!((production_process_params))
  #     redirect_to [:member_page, @gunpla, :production_process], notice: t('.notice')
  #   end
  # rescue ActiveRecord::RecordInvalid
  #   flash.now[:alert] = t('.alert')
  #   render :edit
  end

  def destroy
  #   ApplicationRecord.transaction do
  #     @gunpla = current_member.gunplas.find(params[:gunpla_id])
  #     @gunpla.production_process.destroy!
  #     redirect_to [:member_page, @gunpla, :production_process], notice: '削除しました'
  #   end
  # rescue ActiveRecord::RecordInvalid
  #   @gunpla = current_member.gunplas.find(params[:gunpla_id])
  #   flash.now[:alert] = t('.alert')
  #   render :index
  end

  private

  def production_record_params
    params.require(:production_record).permit(
      :title,
      :production_date,
      :making_hour,
      :making_minute,
      :note,
      :tools
    )
  end
end
