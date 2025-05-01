class ShowsSerializer
  def self.format_shows(shows)
    shows.map do |show|
      {
        id: show.id,
        name: show.name,
        time: show.time
      }
    end
  end
end