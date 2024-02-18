class BunchesController < ApplicationController
  def index
    @bunches = Bunch.all
  end

  def show
    @bunch = Bunch.find(params[:id])
    @price = @bunch.bookmarks.map{|bookmark|bookmark.flower.price * bookmark.quantity}.sum
  end

  def new
    @bunch = Bunch.new
  end

  def create
    @bunch = Bunch.new(params_bunch)
    if @bunch.save
      redirect_to bunch_path(@bunch)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @bunch = Bunch.find(params[:id])
    @bunch.destroy
    redirect_to bunches_path
  end

  private

  def params_bunch
    params.require(:bunch).permit(:name, :description)
  end
end
