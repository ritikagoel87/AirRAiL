# == Schema Information
#
# Table name: flights
#
#  id          :bigint(8)        not null, primary key
#  number      :text
#  origin      :text
#  destination :text
#  date        :datetime
#  plane_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ApplicationRecord
  has_many :reservations
  belongs_to :plane
end
