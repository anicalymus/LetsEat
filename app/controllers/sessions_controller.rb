get "/sessions/new" do
	if request.xhr? 
		erb :'_login_form', layout: false
	else 
		erb :"sessions/new"
	end 
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


