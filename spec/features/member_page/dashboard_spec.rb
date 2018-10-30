require 'rails_helper'

describe '個人会員ダッシュボード' do
  let!(:member) { create(:alice) }

  context 'アカウントの登録が完了している場合' do
    before do
      login_as member
      visit member_page_root_path
    end

    it 'Dashboardのタイトルが表示できる' do
      expect(page).to have_css('.dashboardHeader__title' ,text: 'Dashboard')
    end

    it 'サイドバーの製作管理一覧のリンクが表示できる' do
      expect(page).to have_css('.making-tools-sidebar-link' ,text: '製作道具管理')
    end
  end
end
