json.array!(@category.videos) do |video|
  json.extract! video, :title, :youtube_link
end