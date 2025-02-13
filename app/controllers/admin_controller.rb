class AdminController < ApplicationController
  def login
    # Renders the login view (app/views/admin/login.html.erb)
  end

  def create_session
    user = User.find_by(email_address: params[:email_address])

    # Assuming you've added has_secure_password in your User model
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Signed in successfully!"
    else
      flash.now[:alert] = "Invalid email or password."
      render :login
    end
  end
end
