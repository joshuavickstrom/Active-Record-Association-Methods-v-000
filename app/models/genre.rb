class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Genre.count(:songs)
  end

  def artist_count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    Genre.all.artists(:name)
  end
end
