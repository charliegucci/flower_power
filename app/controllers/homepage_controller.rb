class HomepageController < ApplicationController
    before_action :authenticate_user!
    def index 
      @types = Type.where(parent_id: nil)
      @listings = Listing.all
    end   
end
