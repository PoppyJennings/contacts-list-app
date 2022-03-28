# frozen_string_literal: true

class Contact < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :phone
  validates :phone, numericality: { only_integer: true }
  validates :email, uniqueness: true
  validates :email,
            format: { with: /\A(.+)@(.+)\z/, message: 'Email invalid' },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
  before_validation :normalize_first_name, on: :create
  before_validation :normalize_last_name, on: :create

  private

  def normalize_first_name
    self.first_name = first_name.downcase.titleize
  end

  def normalize_last_name
    self.last_name = last_name.downcase.titleize
  end
end
