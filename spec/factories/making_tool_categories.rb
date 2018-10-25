FactoryBot.define do
  factory :making_tool_category do
    factory :basic_tool do
      name { '基本工作の道具' }
    end

    factory :refine_tool do
      name { '改造の道具' }
    end
  end
end
