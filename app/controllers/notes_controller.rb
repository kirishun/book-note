class NotesController < ApplicationController

  before_action :set_note, only: [:edit, :update, :show, :destroy]

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

  def show
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end

  def destroy
    if @note.destroy
      redirect_to root_path
    else
      redirect_to edit_note_path
    end
  end

  def search
    @notes = Note.search(params[:keyword]).where(user_id: current_user.id).order("created_at DESC")
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :author, :date, :image, :story, :review).merge(user_id: current_user.id)
  end

  def set_note
    @note = Note.find(params[:id])
  end

  

end
