class SightingsController < ApplicationController
  sighting = Sighting.find_by(id: params[:id])
  options = {
    include: [:bird, :location]
  }
  render json: SightingSerializer.new(sighting, options)
end

def index
  sightings = Sighting.all
  options = {
    include: [:bird, :location]
  }
  render json: SightingSerializer.new(sightings, options)
end
