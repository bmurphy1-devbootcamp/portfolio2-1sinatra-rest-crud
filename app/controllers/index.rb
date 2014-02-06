get '/' do
  # Show all notes
  @notes = Note.all
  erb :index
end

get '/notes' do
redirect '/'
end

get '/notes/new' do
  # show new note page
  erb :notes_new
end

post '/notes' do
  # CREATE
  # save new note data from /notes/new
  Note.create(title: params[:title], content: params[:content])
  redirect '/'
end

get '/notes/:id' do
  # READ
  @note = Note.find(params[:id])
  erb :note
end

put 'notes/:id' do
  note = Note.find(params[:id])
  note.title = params[:title]
  note.content = params[:content]
  note.save
  redirect "/notes/#{params[:id]}"
end

get '/notes/:id/edit' do
  # UPDATE
  @note = Note.find(params[:id])
  erb :notes_edit
end

put '/notes/:id' do
  # DESTROY
  # edit note
end
