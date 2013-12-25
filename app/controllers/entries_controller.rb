class EntriesController < ApplicationController

def index
  @entries = Entry.all

   respond_to do |format|
      format.html { render index.html.erb }
      format.json { render json: @events }
    end
end

def show
end

def new
  @entry = Entry.new
end

def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
end

private
  def entry_params
      params.require(:entry).permit(:title, :description)
  end

end




