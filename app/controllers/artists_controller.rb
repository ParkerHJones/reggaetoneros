class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
      render component: 'Artists', props:{ artists:@artists }
  end

  def show
    @artist = Artist.find(params[:id])
    render component: 'Artist', props: { artist: @artist }
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
    else
      render component: 'ArtistNew', props: { artist: @artist}
    end 
  end 

  def new
    @artist = Artist.new
    render component: 'ArtistNew', props { artist: @artist }
  end

  def update 
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
    else 
      render component: 'ArtistEdit', props: { artist: @artist}
    end 
  end 

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    Artist.find(params[:id])destroy
  end 
  
  def edit
    @artist = Artist.find(params[:id])
    render component: 'ArtistEdit', props: { artist: @artist}
  end
end
