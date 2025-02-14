class AdminController < ApplicationController
  allow_unauthenticated_access
  def login
    # Renders the login view (app/views/admin/login.html.erb)
  end
end
