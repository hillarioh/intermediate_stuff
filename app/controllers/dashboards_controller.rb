class DashboardsController < ApplicationController
    def show
        @shout = Shout.new
        @shouts = current_user.shouts
        @user = current_user
    end
end