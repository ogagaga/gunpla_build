describe '製作道具管理、製作道具の登録' do
  let!(:member) { create(:alice) }
  # let!(:making_tool_category) { create(:basic_tool) }
  let!(:making_tool) { create(:design_knife, member: member) }

  before do
    login_as member
    visit member_page_root_path
  end

  it '製作道具管理画面が表示できる' do
    within '.dashboardSection__appMain' do
      click_on '製作道具管理'
    end
    expect(page).to have_css('.makingtoolsHeader__title' ,text: '製作道具管理')
  end

  it '製作道具を登録できる' do
    visit member_page_making_tools_path
    within '.makingtoolsSection__link' do
      click_on '新規登録'
    end
    expect(page).to have_css('.makingtoolsView__title' ,text: '製作道具を登録します')

    fill_in '製作道具名', with: 'ニッパー'
    fill_in '価格', with: '300'
    select '基本工作の道具', from: 'making_tool[making_tool_category_id]'
    click_on '登録'

    expect(page).to have_content '道具を追加しました'
  end

  xit '製作道具を編集できる' do
  end

  xit '製作道具を削除できる' do
  end
end
