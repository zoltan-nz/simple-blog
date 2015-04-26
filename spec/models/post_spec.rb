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

require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
