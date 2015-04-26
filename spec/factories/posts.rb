# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  image        :string
#  title        :string
#  tagline      :string
#  url          :string
#  sort_order   :integer
#  scheduled_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :post do
    title "MyString"
    tagline "MyString"
  end
end
