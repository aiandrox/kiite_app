# == Schema Information
#
# Table name: kiites
#
#  id         :integer          not null, primary key
#  emoticon   :string
#  sokka      :integer
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Kiite < ApplicationRecord
  has_many :comments, foreign_key: kiite_id, dependent: :destroy
  validates :text, presence: true
  validates :emoticon, presence: true
end
