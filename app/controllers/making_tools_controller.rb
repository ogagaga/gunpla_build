class MakingToolsController < ApplicationController
  PER_PAGE = 10
  def index
    @making_tools = MakingTool.all.page(params[:page]).per(PER_PAGE)
  end
end
