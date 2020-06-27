class BotsController < ApplicationController

  def index
    gon.open_weather_map_api = ENV['OPEN_WETHER_MAP_API']
  end

end
