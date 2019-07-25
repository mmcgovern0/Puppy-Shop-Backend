class ApplicationController < ActionController::API
    
    def encode_token(payload)
        JWT.encode payload, secret, 'HS256'
    end

    def user_payload(user)
        { user_id: user.id }
    end

    def secret
        Rails.application.credentials.my_app_secret
    end

    def token
        token = request.headers["Authorization"]
    end

    def decoded_token
        JWT.decode token, secret, true, {algorithm: 'HS256'} if token
    end

    def current_user
        return if !token
        user_id = decoded_token[0]["user_id"]
        User.find(user_id)
    end

end

