get '/users/new' do
	erb :'/users/new'
end

post '/users' do
	@user = User.new(params[:user])
	@user.password = params[:password]
	if @user.save
		redirect "/users/#{@user.id}"
	else
		@errors = @user.errors.full_messages
		erb :'/users/new'
	end
end

get '/users/:id' do
	@user = User.find(params[:id])
	if session[:id] == @user.id
		erb :'/users/show'
	else
		erb :'/sessions/new'
	end
end