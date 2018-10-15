class MemberPage::ApplicationController < ApplicationController
  layout 'member_page'

  before_action :authenticate_member!
end
