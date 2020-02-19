class BuyingController < ApplicationController

    def index
        @types = Type.all
        @listings = Listing.all
    end
end
