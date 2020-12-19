# frozen_string_literal: true

class Comment < ActiveRecord::Base
  belongs_to :video
end
