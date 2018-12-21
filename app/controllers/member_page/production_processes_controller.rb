class MemberPage::ProductionProcessesController < MemberPage::ApplicationController
  def index
  end

  def show
    @gunpla = current_member.gunplas.find(params[:gunpla_id])
  end

  def new
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
