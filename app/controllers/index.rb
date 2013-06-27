get '/' do
  @events = Event.all
  @errors = params[:errors]
  erb :index
end

post '/' do
  p params[:event]
  Event.create(params[:event])
  redirect '/'
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show, :layout => false
end

get '/events/new' do
  #TODO IMPLEMENT ME
end

