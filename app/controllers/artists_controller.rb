class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
      render component: 'Artists', props:{ artists:@artists }
  end

  def show
  end

  def new
  end

  def edit
  end
end
