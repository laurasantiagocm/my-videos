# frozen_string_literal: true

class Category < ActiveRecord::Base
  has_many :videos, dependent: :destroy

  validates :name, presence: true
end
