class ArtworksController < ApplicationController
before_action :set_artwork, only: [:show, :edit, :update, :destroy]
respond_to :html, :json

def index
  @artworks = Artwork.where(user_id: params[:user_id])
  respond_with(@artworks)
end

def show
  set_artwork
  respond_with(@artwork)
end

def new
  @artwork = Artwork.new
  respond_with(@artwork)
end

def edit
end

def create
  @artwork = Artwork.new(artwork_params)
  @artwork.save
  redirect_to user_artworks_path(params[:user_id])
end

def update
  @artwork.update(artwork_params)
  respond_with(@artwork)
end

def destroy
  @artwork.destroy
  redirect_to user_artworks_path(params[:user_id])
end

private
  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:artist, :title, :date, :description, :img_url, :user_id, :id, :created_at, :updated_at, :featured)
  end
end
