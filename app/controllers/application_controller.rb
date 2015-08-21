class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 def index
     if params.has_key? (:page) and params[:page]=='users'
     
        @user=User.all
     elsif params.has_key?(:page) and params[:page]=='tweets'
       
        @tweet=Tweet.all

     end
 end
end
