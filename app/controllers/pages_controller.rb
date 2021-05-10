class PagesController < ApplicationController
    # need to create a method
    
    def home
        set_country
    end
    
    def welcome
        set_country
    end

    def about
        # raise --> intentionally crashing the app
        @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
        if params[:query].present?
            @query = params[:query]
            @results = @members.select { |member| member[0] == @query }
        end
    end

    private

    def set_country
        @country = "Norway"
    end
end
