class BrandsController < ApplicationController
  include Restable
  include Rangable

  def index
    render json: Brand.all
  end

  def new
  end

  def create
    Brand.create name: params[:name]
  end

  def show
    render json: Brand.find(params[:id])
  end

  def edit
  end

  def update
    Brand.find params[:id]
    render json: params
  end

  def destroy

  end
end