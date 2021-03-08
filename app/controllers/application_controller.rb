class ApplicationController < ActionController::Base
  before_action :authenticate_user! # 前画面ログイン必須
end
