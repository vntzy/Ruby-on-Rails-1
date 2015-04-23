module Restable
  DB = {1 => {id: 1}}

  def index
    render json: DB[1]
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end