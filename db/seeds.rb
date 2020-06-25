# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AudioSegment.delete_all
Conference.delete_all
User.delete_all


morpheus = User.create(name:'Morpheus')
neo = User.create(name:'Neo')
trinity = User.create(name:'Trinity')

conf1 = Conference.create(name:"Important Decision Meeting", dateTime:"2020-06-24 12:00:00")

# AudioSegment.create(user:, conference:conf1, audioStart:, audioEnd:)

AudioSegment.create(user: morpheus, conference:conf1, audioStart:"12:00:00", audioEnd:"12:00:15")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:00:15", audioEnd:"12:00:20")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:00:22", audioEnd:"12:00:30")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:00:30", audioEnd:"12:02:00")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:02:04", audioEnd:"12:02:05")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:02:05", audioEnd:"12:02:49")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:02:50", audioEnd:"12:02:59")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:02:59", audioEnd:"12:03:00")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:03:10", audioEnd:"12:03:33")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:03:35", audioEnd:"12:03:44")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:03:55", audioEnd:"12:04:40")
AudioSegment.create(user:trinity, conference:conf1, audioStart:"12:04:40", audioEnd:"12:04:50")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:04:50", audioEnd:"12:04:55")
AudioSegment.create(user:trinity, conference:conf1, audioStart:"12:04:58", audioEnd:"12:05:25")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:05:26", audioEnd:"12:05:34")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:05:34", audioEnd:"12:05:56")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:06:00", audioEnd:"12:06:22")
AudioSegment.create(user:morpheus, conference:conf1, audioStart:"12:06:25", audioEnd:"12:06:45")
AudioSegment.create(user:neo, conference:conf1, audioStart:"12:06:48", audioEnd:"12:07:00")
AudioSegment.create(user:trinity, conference:conf1, audioStart:"12:07:00", audioEnd:"12:07:12")

