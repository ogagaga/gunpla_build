class MemberPage::ProductionProcessesController < MemberPage::ApplicationController
  def index
  end

  def show
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
  end

  def new
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
    @production_process = @gunpla.build_production_process
  end

  def create
    ApplicationRecord.transaction do
      @gunpla = current_member.gunplas.find(params[:gunpla_id])
      @production_process = @gunpla.build_production_process(production_process_params)
      @production_process.save!
      redirect_to [:member_page, @gunpla, :production_process], notice: t('.notice')
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def production_process_params
    params.require(:production_process).permit(
      :title,
      :summary,
      :started_on,
      :ended_on
    )
  end
end
