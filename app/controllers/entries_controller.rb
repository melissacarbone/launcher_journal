class EntriesController < ApplicationController

def index
  @entries = Entry.all
end

def new
  @entry = Entry.new
end

def show
   @entry = Entry.find(params[:id])
end

def create
    @entry = Entry.new(entry_params)

      if @entry.save
        redirect_to @entry, notice: 'Entry was successfully created.'
      else
        render 'new'
      end
end

def edit
  @entry = Entry.find(params[:id])
end

def update
  @entry = Entry.find(params[:id])

    if @entry.update(params[:entry].permit(:title, :description))
      redirect_to @entry
    else
      render 'edit'
    end
end



private
  def entry_params
      params.require(:entry).permit(:title, :description)
  end

end




