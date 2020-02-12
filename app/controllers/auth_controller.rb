class AuthController < ApplicationController
    def login
        #find user
        # debugger
        user = User.find_by(username: params[:username])

        #if user exist, authenticate via password
        is_authenticated = user.authenticate(params[:password])

        #if all is well, send back the user
        if is_authenticated
            payload = {user_id: user.id}
            token = JWT.encode(payload, ENV['jwt_token'],'HS256')

            render json: {token: token, user: user}
        else
            render json: {errors: ['Invalid username or password' ]}, status: 422
        end

    
    end


end
