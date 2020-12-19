# frozen_string_literal: true

class Video < ActiveRecord::Base
  belongs_to :category
  has_many :comments
end
