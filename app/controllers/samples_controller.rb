class SamplesController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  before_action :basic_auth

  # GET /samples
  def index
     render json: { status: "ok"}
  end

  # GET /samples/1
  def show
    render json: { status: "ok"}
  end

  # POST /samples
  def create
    render json: { status: "ok"}
  end

  # PATCH/PUT /samples/1
  def update
    render json: { status: "ok"}
  end

  # DELETE /samples/1
  def destroy
    render json: { status: "ok"}
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == "hoge" && password == "fuga"
    end
  end
end
