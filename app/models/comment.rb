# frozen_string_literal: true

class Comment < ActiveRecord::Base
  belongs_to :video, required: true

  validates :author_name, :comment_body, presence: true
end
