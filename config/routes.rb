Rails.application.routes.draw do
  namespace :api do
    get '/video_games' => 'video_games#index'
    post '/video_games' => 'video_games#create'
    get '/video_games/:id' => 'video_games#show'
    patch '/video_games/:id' => 'video_games#update'
    delete '/video_games/:id' => 'video_games#destroy'
  end
end 
