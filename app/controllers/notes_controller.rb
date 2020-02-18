class NotesController < ApplicationController

  def index
    @notes = Note.where(user_id: current_user.id).order("created_at DESC")
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
    if @note.save
    redirect_to root_path
    else
      render action: :new
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
  end

  private
  def note_params
    params.require(:note).permit(:title, :author, :date, :image, :story, :review).merge(user_id: current_user.id)
  end

end
