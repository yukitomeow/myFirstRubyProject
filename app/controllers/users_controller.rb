class UsersController <  ActionController::Base

def index
    @users=User.all
end

    def show
        @user = User.find(params["id"]) #pass user to view
    end
end  