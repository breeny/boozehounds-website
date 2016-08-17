class HomeController < ApplicationController
  def index
    Yt.configuration.api_key = "AIzaSyAclweov9YHqlmd4of52G0H4_3Cd40ieBY"
    _playlist = Yt::Playlist.new url: 'youtube.com/playlist?list=PL6MAHUvxQ94Z_EVuKAr-UTDkXLDBt78Tf'
    @playlist = Array.new
    _playlist.playlist_items.each do |item|
      @playlist.push(item)
    end
    @playlist = @playlist.reverse
  end
end
