class UsersController <  ActionController::Base
    def show
        @user = User.find(params["id"]) #pass user to view
    end
end  