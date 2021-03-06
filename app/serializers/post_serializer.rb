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

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :tagline, :url, :sort_order, :scheduled_at
end
