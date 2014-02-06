get '/' do
  @posts = Post.all
  erb :index
end

get '/posts' do
  erb :posts
end

get '/posts/new' do
  erb :posts_new
end

post '/posts' do
end

get '/posts/:id' do
end

get '/posts/edit/:id' do
  erb :posts_edit
end

put '/posts/:id' do
end

delete '/photos/:id' do
end
