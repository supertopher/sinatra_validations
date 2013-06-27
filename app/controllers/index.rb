get '/' do
  @events = Event.all
  erb :index
end

post '/' do
  # Event.create(title: params[:title], organizer_name:, params[:organizer_name], email: params[:email])
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show, :layout => false
end

get '/events/new' do
  #TODO IMPLEMENT ME
end

