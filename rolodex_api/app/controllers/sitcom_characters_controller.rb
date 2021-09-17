class SitcomCharactersController < ApplicationController
    def index
        render json: SitcomCharacter.all
    end
end