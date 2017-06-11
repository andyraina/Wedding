# == Schema Information
#
# Table name: days
#
#  id          :integer          not null, primary key
#  day_of_week :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Day < ApplicationRecord

  validates :day_of_week, presence: true
has_many :events, :dependent => :destroy
end
