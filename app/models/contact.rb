# frozen_string_literal: true

class Contact < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :phone
  validates :phone, numericality: { only_integer: true }
  validates :email, uniqueness: true
  validates :email,
  format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
end
