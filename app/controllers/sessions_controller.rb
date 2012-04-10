class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by_email(params[:session][:email])
        if user && user.authenticate(params[:session][:password])
            # Sign the user in and redirect to user's page
            sign_in user
            redirect_to user
        else
            flash.now[:error] = 'Invalid email/password combination'
            render 'new'
            # Create an error message and re-render signin form
        end
    end

    def destroy
        sign_out
        redirect_to root_path
    end
end
