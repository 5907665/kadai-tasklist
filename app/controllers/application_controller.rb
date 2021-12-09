class ApplicationController < ActionController::Base
  include Pagy::Backend
  include SessionsHelper
  
  private
   # ログイン済みユーザーかどうか確認
    def require_user_logged_in
      unless logged_in?
        redirect_to login_url
      end
    end
end