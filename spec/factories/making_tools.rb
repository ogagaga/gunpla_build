FactoryBot.define do
  factory :making_tool do
    factory :design_knife do
      name { 'デザインナイフ' }
      price { 500 }
      affiliate_amazon_link  { nil }
      image { nil }
      note { 'ゲート処理に必要です' }

      association :making_tool_category, factory: :basic_tool
    end
  end
end
