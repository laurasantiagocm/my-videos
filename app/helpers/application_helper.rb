module ApplicationHelper
  def embbed_url(video)
    "https://www.youtube.com/embed/#{video.youtube_link.split('/').last}"
  end
end
