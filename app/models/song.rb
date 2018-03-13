class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Song.first.genre(:name)
  end

  def drake_made_this
    artist = Artist.new(name: "Drake")
    song.artist = artist
  end
end
