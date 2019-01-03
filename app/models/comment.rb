# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  kiite_id   :integer
#
# Indexes
#
#  index_comments_on_kiite_id  (kiite_id)
#

class Comment < ApplicationRecord
  belongs_to :kiite
  validates :text, presence: true
end
