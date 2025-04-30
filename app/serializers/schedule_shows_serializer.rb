class ScheduleShowsSerializer
  def self.format_schedule_shows(schedule_shows)
    schedule_shows.map do |schedule_show|
      {
        id: schedule_show.id,
        show: {
          id: schedule_show.show.id,
          name: schedule_show.show.name,
          time: schedule_show.show.time
        }
      }
    end
  end
end