#landing
get '/' do
  erb :landing
end

#index
get '/artists' do
  @artist = Artist.all
  erb :"artists/index"
end

#create
post '/artists' do
  Artist.create(name: params[:name], video_url:params[:video_url])
  if(artist.save)
    redirect '/artists'
    else
    erb :"artists/new"
  end
end
