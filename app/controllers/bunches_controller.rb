class BunchesController < ApplicationController
  def index
    @bunches = Bunch.all
  end

  def show
    @bunch = Bunch.find(params[:id])
    @bookmarks= @bunch.bookmarks
    # @price = @bunch.bookmarks.map{|bookmark|bookmark.flower.price * bookmark.quantity}.sum
  end

  def new
    @bunch = Bunch.new
    @bookmark = Bookmark.new
  end

  def create
    @bunch = Bunch.new(params_bunch)
    if @bunch.save
      redirect_to bunch_path(@bunch)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def update
    @bunch = Bunch.find(params[:id])
    if @bunch.update(params_bunch)
      redirect_to bunch_path(@bunch), notice: 'Bunch was successfully updated.'
    else
      redirect_to bunch_path(@bunch), notice: 'Bunch was not successfully updated.'
    end
  end

  def destroy
    @bunch = Bunch.find(params[:id])
    @bunch.destroy
    redirect_to bunches_path
  end

  private

  def params_bunch
    params.require(:bunch).permit(:id, :name, :description, bookmarks_attributes: [:id, :flower_id, :quantity])
  end
end
