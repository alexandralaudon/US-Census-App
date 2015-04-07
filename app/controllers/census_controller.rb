class CensusController < ApplicationController

  def decision
    census = CensusAPI.new
    @location = census.location
  end

end
