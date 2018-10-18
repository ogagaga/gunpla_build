describe '個人会員ダッシュボード' do
  let!(:member) { create(:alice) }

  context 'アカウントの登録が完了している場合' do
    before do
      login_as member
      visit member_page_root_path
    end

    it '製作道具管理画面が表示できる' do
      click_on '製作道具管理'
      expect(page).to have_css('.makingtoolsHeader__title' ,text: '製作道具管理')
    end
  end
end
