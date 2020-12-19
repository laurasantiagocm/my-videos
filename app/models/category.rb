# frozen_string_literal: true

class Category < ActiveRecord::Base
  has_many :videos

  validates :name, presence: true
end
