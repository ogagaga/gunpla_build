module LoginSpecHelper
  def login_as(user)
    visit "/#{user.model_name.collection}/sign_in"

    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: user.password

    find('button[type="submit"]').click

  end
end

RSpec.configuration.include LoginSpecHelper, type: :feature
