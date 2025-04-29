# ScheduleShow.destroy_all
# Show.destroy_all
# Schedule.destroy_all
# User.destroy_all

shows = Show.create!([
  { name: "Jazz Eruption", time: "7-9pm" },
  { name: "Euro Disco", time: "2-4pm" },
  { name: "Metalcore", time: "2-4am" },
  { name: "Trancerave", time: "6-7pm" },
  { name: "Jamaican Jumble", time: "11-12pm" },
  { name: "Springtime Classics", time: "11am-12pm" },
  { name: "Death Knot Battle", time: "9-11pm" },
  { name: "Royal Rap-off", time: "4-6pm" },
  { name: "Slam Poet Society", time: "2-8pm" }
])

users = User.create!([
  { name: "Alice" },
  { name: "Bob" },
  { name: "Charlie" }
])

users.each do |user|
  5.times do |i|
    schedule = user.schedules.create!(name: "Schedule ##{i + 1}")

    schedule.shows << shows.sample(3)
  end
end