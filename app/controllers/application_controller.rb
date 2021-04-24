class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByTokenx
end
