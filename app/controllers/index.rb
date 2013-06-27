get '/' do
  @events = Event.all
  erb :index
end

post '/' do
  p params[:event]
  Event.create(params[:event])
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show, :layout => false
end

get '/events/new' do
  #TODO IMPLEMENT ME
end

