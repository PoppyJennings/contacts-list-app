# frozen_string_literal: true

class Contact < ApplicationRecord
  # has_paper_trail on: [:update, :destroy]
  has_paper_trail

  acts_as_tracked

  # has_many :versions
  # include ActiveModel::Dirty

  # define_attribute_methods :first_name, :last_name, :email, :phone

  before_validation :normalize_first_name, on: :create
  before_validation :normalize_last_name, on: :create
  # after_save :print_changes
  # before_update :check_for_changes
  # after_update :check_for_previous_changes

  validates_presence_of :first_name, :last_name, :email, :phone
  validates :phone, numericality: { only_integer: true }
  validates :email, uniqueness: true
  validates :email,
            format: { with: /\A(.+)@(.+)\z/, message: 'Email invalid' },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 95 }


      # def initialize
      #   @first_name = nil
      # end
  
      # def first_name
      #   @first_name
      # end
  
      # def first_name=(val)
      #   first_name_will_change! unless val == @first_name
      #   @first_name = val
      # end
  
      # def save
      #   # do persistence work
  
      #   changes_applied
      # end
  
      # def reload!
      #   # get the values from the persistence layer
  
      #   clear_changes_information
      # end
  
      # def rollback!
      #   restore_attributes
      # end






  private

  def normalize_first_name
    self.first_name = first_name.downcase.titleize
  end

  def normalize_last_name
    self.last_name = last_name.downcase.titleize
  end

  def check_for_changes
    puts changes # => {"name"=>["Nimish Gupta", "Nimish Mahajan"], "updated_at"=>[Tue, 20 Nov 2018 00:02:14 PST -08:00, Tue, 20 Nov 2018 00:06:15 PST -08:00]}
    puts previous_changes # => {} At this point this will be empty beacuse changes are not made to DB yet
  end

  def check_for_previous_changes
    # but you can make use of previous_changes method to know what change has occurred.
    puts previous_changes # => {"name"=>["Nimish Gupta", "Nimish Mahajan"], "updated_at"=>[Tue, 20 Nov 2018 00:06:15 PST -08:00, Tue, 20 Nov 2018 00:08:07 PST -08:00]}
  end
end
