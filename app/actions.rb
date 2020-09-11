post '/signup' do

 
  email      = params[:email]
  avatar_url = params[:avatar_url]
  username   = params[:username]
  password   = params[:password]

  user = User.new({email: email, avatar_url: avatar_url, username: username, password: password })


  if user.save


    escape_html user.inspect


  else
    
    
    escape_html user.errors.full_messages
 
  end
end