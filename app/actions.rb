# Homepage (Root path)
get '/' do
  erb :landing
end

get '/listings' do
  erb :'listings/index'
end

get '/listings/map' do
  @listings = Listing.all
  erb :'listings/map'
end

get '/listings/create' do
  erb :'listings/create'
end

post '/listings' do
  @listing = Listing.new(
    price: params[:price],
    area: params[:area],
    street_address: params[:street_address],
    bedrooms: params[:bedrooms],
    bathrooms: params[:bathrooms]
    )
  if @listing.save
    redirect '/listings'
  else
    erb :'listings/create'
  end
end





