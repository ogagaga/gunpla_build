class MemberPage::MakingToolsController < MemberPage::ApplicationController
  def index
    @making_tools = current_member.making_tools
  end

  def new
    @making_tool = current_member.making_tools.build
  end

  def create
    ApplicationRecord.transaction do
      @making_tool = current_member.making_tools.build(making_tool_params)
      @making_tool.save!
      redirect_to member_page_making_tools_path, notice: t('.notice')
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :new
  end

  def edit
    @making_tool = current_member.making_tools.find(params[:id])
  end

  def update
    ApplicationRecord.transaction do
      @making_tool = current_member.making_tools.find(params[:id])
      @making_tool.update!(making_tool_params)
      redirect_to member_page_making_tools_path, notice: t('.notice')
    end
  rescue ActiveRecord::RecordInvalid
    flash.now[:alert] = t('.alert')
    render :edit
  end

  private

  def making_tool_params
    params.require(:making_tool).permit(
      :name,
      :price,
      :affiliate_amazon_link,
      :image,
      :note,
      :making_tool_category_id
    )
  end
end
