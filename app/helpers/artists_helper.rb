module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
  
  def artist_select(song, exists)
    if exists
        @artist = Artist.find_by(id: params[:artist_id])
    end
  end
end
