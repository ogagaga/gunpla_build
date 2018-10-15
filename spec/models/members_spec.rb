require "rails_helper"

RSpec.describe Member, type: :model do
  describe 'バリデーション' do
    let!(:member) { build(:member) }

    it 'emailとパスワードどちらも値が設定されていれば、OK' do
      expect(member.valid?).to eq(true)
    end

    it 'パスワードが空だとNG' do
      member.password = ''
      expect(member.valid?).to eq(false)
    end

    it 'emailが空だとNG' do
      member.email = ''
      expect(member.valid?).to eq(false)
    end
  end
end
