# == Schema Information
#
# Table name: airports
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airport < ApplicationRecord
end
