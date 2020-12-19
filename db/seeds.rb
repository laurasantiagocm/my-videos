# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  Category.create(
    name: "Category #{i}",
    favorite: [true, false].sample
  )
end

50.times do |i|
  Video.create(
    title: "Video #{i}",
    youtube_link: "https://youtu.be/9hnPTEs9g54",
    category_id: Category.all.pluck(:id).sample
  )
end

20.times do |i|
  Comment.create(
    author_name: "Author #{i}",
    comment_body: "I'm comment #{i}",
    video_id: Video.all.pluck(:id).sample
  )
end