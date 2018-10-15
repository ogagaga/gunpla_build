class ApplicationController < ActionController::Base

  private

  def after_sign_in_path_for(resource)
    case resource
    when Member
      member_page_root_path
    else
      raise "#{resource} should not be signed in."
    end
  end

  def after_sign_out_path_for(resource)
    case resource
    when :member
      new_member_session_path
    else
      root_path
    end
  end
end
