class BookmarksController < ApplicationController
  def new
    @bunch = Bunch.find(params[:bunch_id])
    @bookmark = Bookmark.new
  end

  def create
    @bunch = Bunch.find(params[:bunch_id])
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.bunch = @bunch
    if @bookmark.save
      redirect_to bunch_path(@bunch)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @bunch = Bunch.find(params[:bunch_id])
    @bookmark = Bookmark.find(params[:id])
  end

 def update
  @bunch = Bunch.find(params[:bunch_id])
  @bookmark = Bookmark.find(params[:id])
  if @bookmark.update(params_bookmark)
    redirect_to bunch_path(@bunch), notice: 'Bookmark was successfully updated.'
  else
    puts @bookmark.errors.full_messages
    render :edit, status: :unprocessable_entity
  end
 end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bunch_path(@bookmark.bunch)
  end

private

  def params_bookmark
    params.require(:bookmark).permit(:flower_id, :quantity)
  end

end
