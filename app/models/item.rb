# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  description :text
#  image_url   :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_items_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Item < ApplicationRecord
  belongs_to :user
end
