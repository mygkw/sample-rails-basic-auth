class SamplesController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  before_action :basic_auth

  # GET /samples
  def index
     render json: { val: "今のデータだよ" }
  end

  # POST /samples
  def create
    # "フロントエンドでPOSTできること"までが今回の確認観点なので、ここでは何もしない
    render json: {}
  end

  private

  def basic_auth
    sleep 1 # フロントエンドのロード確認用にウェイト

    authenticate_or_request_with_http_basic do |username, password|
      username == "hoge" && password == "fuga"
    end
  end
end
