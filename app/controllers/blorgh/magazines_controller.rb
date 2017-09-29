require_dependency "blorgh/application_controller"

module Blorgh
  class MagazinesController < ApplicationController
    before_action :set_magazine, only: [:show, :edit, :update, :destroy]

    # GET /magazines
    def index
      @magazines = Magazine.all
    end

    # GET /magazines/1
    def show
    end

    # GET /magazines/new
    def new
      @magazine = Magazine.new
    end

    # GET /magazines/1/edit
    def edit
    end

    # POST /magazines
    def create
      @magazine = Magazine.new(magazine_params)

      if @magazine.save
        redirect_to @magazine, notice: 'Magazine was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /magazines/1
    def update
      if @magazine.update(magazine_params)
        redirect_to @magazine, notice: 'Magazine was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /magazines/1
    def destroy
      @magazine.destroy
      redirect_to magazines_url, notice: 'Magazine was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_magazine
        @magazine = Magazine.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def magazine_params
        params.require(:magazine).permit(:title)
      end
  end
end
