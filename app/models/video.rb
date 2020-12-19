# frozen_string_literal: true

class Video < ActiveRecord::Base
  belongs_to :category, required: true
  has_many :comments

  validates :title, :youtube_link, presence: true
end
