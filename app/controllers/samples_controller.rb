class SamplesController < ApplicationController
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
end
