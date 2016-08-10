class HomeController < ApplicationController
  def index
    Yt.configuration.api_key = "AIzaSyAclweov9YHqlmd4of52G0H4_3Cd40ieBY"
    @playlist = Yt::Playlist.new url: 'youtube.com/playlist?list=PLbIc1971kgPCDE4kgkx6aIi47lldh_ugK'
  end
end
