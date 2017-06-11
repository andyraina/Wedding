# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  start_time  :time
#  end_time    :time
#  description :string
#  day_id      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
  validates :start_time, :end_time, :description, :day_id, presence: true

  belongs_to :day
  has_many :agenda_itms, :class_name => "AgendaItem", :dependent => :destroy
end
