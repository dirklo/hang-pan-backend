class NotesController < ApplicationController
    before_action :set_note, only: :show

    def index 
        @notes = Note.all
        render json: @notes
    end

    def show
        render json: @note
    end

    private
        def set_note
            @note = Note.find_by(id: params[:id])
        end
end
