class ShoutsController < ApplicationController
    before_action :require_login
    def create
        if currect_user
            currect_user.shouts.create(shout_params)
        end
        redirect_to root_path
    end

    def shout_params
        params.require(:shout).permit(:body)
    end
end
