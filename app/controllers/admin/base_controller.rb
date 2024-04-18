class Admin::BaseController < ApplicationController
    #layout 'admin'
    before_action :require_login
  
    private
  
    def require_login
        unless user_signed_in?
            redirect_to login_url
        end
      # Implement your login check logic here
      # For example, redirect to login if not logged in
    end
  end

