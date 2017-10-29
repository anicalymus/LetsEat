get "/users/new" do
	if request.xhr? 
		erb :'_sign_up', layout: false
	else
		erb :'users/new'
	end
end

post "/users" do
	@user = User.new(params[:user])
	if @user.save
		if request.xhr?
			erb :'_sign_up', layout: false, locals: {user: @user}
		# session[:id] = @user.id
		else
			redirect "/users/#{@user.id}"
		end
	else
		@errors = @user.errors.full_messages
		erb :"_errors", layout: false
	end
end

get "/users/:id" do
	@user = User.find(params[:id])
	if request.xhr?
		erb :"_input_ingredient", layout: false
	# if session[:id] == @user.id
	else
		erb :"users/show"
	# erb :"sessions/new"
	end
end