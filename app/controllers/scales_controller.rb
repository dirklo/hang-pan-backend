class ScalesController < ApplicationController
    before_action :set_scale, only: :show
    def index
        @scales = Scale.all
        render json: @scales
    end

    def show
        @notes = @scale.scale_notes.sort_by_position.map{|scale_note| scale_note.note}
        render json: @notes
    end
    
    def create
        new_scale = Scale.create(scale_params)
        ["0", "1", "2", "3", "4", "5", "6", "7", "8"].each_with_index do |note, index|
            new_scale.scale_notes.create(note_id: params[note], position: index + 1)
        end
        if new_scale.save
            render json: new_scale
        end
    end
    
    private
        def set_scale
            @scale = Scale.find_by(id: params[:id])
        end

        def scale_params
            params.require(:scale).permit(:name)
        end
end
