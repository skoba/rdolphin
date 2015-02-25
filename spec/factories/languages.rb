FactoryGirl.define do
  factory :en, class: Language do
    code "en"
    description "English"
  end

  factory :ja, class: Language do
    code 'ja'
    description 'Japanese'
  end
end
