class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByTokenx
  before_action :authenticate_user!
end
