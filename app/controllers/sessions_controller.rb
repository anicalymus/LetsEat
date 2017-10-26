get "/sessions/new" do
	erb :"sessions/new"
end

#login
post "/sessions/new" do
	@user = User.find_by_email(params[:email])
	if @user && @user.password == params[:password]
		session[:id] = @user.id
		redirect "/users/#{@user.id}"
	else
		@errors = ["Invalid email and/or password"]
		erb :"sessions/new"
	end
end

#logout
delete "/sessions/:id" do
	session[:id] = nil
	redirect "/"
end


