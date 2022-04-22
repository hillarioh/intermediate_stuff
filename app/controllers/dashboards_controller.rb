class DashboardsController < ApplicationController
    def show
        @shout = Shout.new
        @shouts = Shout.all
        @user = current_user
    end
end