require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Artist.first(genre: "Rock")
    binding.pry
  end

  def drake_made_this

  end
end
