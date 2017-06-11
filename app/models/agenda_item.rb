# == Schema Information
#
# Table name: agenda_items
#
#  id          :integer          not null, primary key
#  start_time  :time
#  end_time    :time
#  description :string
#  status      :text
#  event_id    :integer
#  leader      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AgendaItem < ApplicationRecord
  validates :start_time, :end_time, :description, :leader, :status, :event_id, presence: true

  belongs_to :event
end
