# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  fname           :text
#  lname           :text
#  email           :text
#  password_digest :text
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :reservations
  has_many :flights, :through => :reservations
  has_secure_password
end
