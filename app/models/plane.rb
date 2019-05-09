# == Schema Information
#
# Table name: planes
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  seats      :integer
#  rows       :integer
#  columns    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ApplicationRecord
  has_many :flights
  has_many :reservations, :through => :flights
end
