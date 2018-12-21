class MemberPage::ProductionProcessesController < MemberPage::ApplicationController
  def index
  end

  def show
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
  end

  def new
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
    @production_process = @gunpla.build_production_process
    # binding.pry
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
