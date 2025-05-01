# Clear existing records if necessary
# ScheduleShow.destroy_all
# Show.destroy_all
# Schedule.destroy_all
# User.destroy_all

# Create Shows
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

# Create Users
users = User.create!([
  { name: "Alice" },
  { name: "Bob" },
  { name: "Charlie" }
])

# Create Schedules and associate users with shows through ShowUser
users.each do |user|
  5.times do |i|
    schedule = user.schedules.create!(name: "Schedule ##{i + 1}")

    # For each schedule, add 3 random shows from the list
    selected_shows = shows.sample(3)

    # Add shows to the schedule
    selected_shows.each do |show|
      schedule.shows << show

      # Also create the ShowUser association to link user to show
      ShowUser.create!(show: show, user: user)
    end
  end
end