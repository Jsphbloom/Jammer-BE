class ScheduleShowsSerializer
  def self.format_schedule_shows(schedule_shows)
    schedule_shows.includes(:show => :users).map do |schedule_show|
      {
        id: schedule_show.id,
        show: {
          id: schedule_show.show.id,
          name: schedule_show.show.name,
          time: schedule_show.show.time,
          users: schedule_show.show.users.map { |user| { id: user.id, name: user.name } }
        }
      }
    end
  end
end