class Api::VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
    render 'index.json.jb'
  end

  def create
    @video_game = VideoGame.new(
                                title: params[:title],
                                genre: params[:genre],
                                initial_release_date: params[:initial_release_date],
                                rating: params[:rating],
                                kid_friendly: params[:kid_friendly]
                               )
    if @video_game.save
      render 'show.json.jb'
    else
      render json: {errors: @video_game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @video_game = VideoGame.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @video_game = VideoGame.find(params[:id])

    @video_game.title = params[:title] || @video_game.title
    @video_game.genre = params[:genre] || @video_game.genre
    @video_game.initial_release_date = params[:initial_release_date] || @video_game.initial_release_date
    @video_game.rating = params[:rating] || @video_game.rating
    @video_game.kid_friendly = params[:kid_friendly] || @video_game.kid_friendly

    if @video_game.save
      render 'show.json.jb'
    else
      render json: {errors: @video_game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    video_game = VideoGame.find(params[:id])
    video_game.destroy

    render json: {message: "DELETED!"}
  end
end