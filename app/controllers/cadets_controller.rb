class CadetsController < ApplicationController

    def show
        @cadet = Cadets.find(params[:id])
    end

    def index
        @cadets = Cadets.all
    end

    def new
        @cadet = Cadets.new
    end

    def edit
        @cadet = Cadets.find(params[:id])
    end

    def create
        @cadet = Cadets.new(params.require(:cadet).permit(:CWID, :CO_ID, :C_STATUS, :F_NAME, :M_INITIAL, :L_NAME, :R_NUM, :P_NUM, :EMAIL, :RANK_ID, :monday, :tuesday, :wednesday, :thursday, :friday))
        if @cadet.save
            flash[:notice] = "Cadet was created successfully."
            redirect_to cadet_path(@cadet)
        else
            render 'new'
        end
    end

    def update
        @cadet = Cadets.find(params[:id])
        if @cadet.update(params.require(:cadets).permit(:CWID, :CO_ID, :C_STATUS, :F_NAME, :M_INITIAL, :L_NAME, :R_NUM, :P_NUM, :EMAIL, :RANK_ID, :monday, :tuesday, :wednesday, :thursday, :friday))
            flash[:notice] = "Cadet was updated successfully"
            redirect_to cadet_path(@cadet)
        else
            render 'edit'

        end
    end

    def destroy
        @cadet = Cadets.find(params[:id])
        @cadet.destroy
        redirect_to cadets_path
    end
end