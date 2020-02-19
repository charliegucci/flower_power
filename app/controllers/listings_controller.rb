class ListingsController < ApplicationController
      
        # GET /listings
        # GET /listings.json
        def index
          @listings = Listing.all
        end
      
        # GET /listings/1
        # GET /listings/1.json
        def show
            @listing = Listing.find(params[:id])
            @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
              name: @listing.type.name,
              amount: (@listing.price * 100).to_i,
              currency: 'aud',
              quantity: 1,
            }],
            payment_intent_data: {
              metadata: {
                user_id: current_user.id,
                listing_id: @listing.id,
              }
            },
            success_url: "#{root_url}",
            cancel_url: "#{root_url}",
            )
        end
      
        # GET /listings/new
        def new
          @listing = Listing.new
          @types = Type.all.map{ |type| [type.name, type.id]}
        end
      
        # GET /listings/1/edit
        def edit
        end
      
        # POST /listings
        # POST /listings.json
        def create
         @listing = Listing.new
         p @listing
         @listing.type_id = params[:listing][:type_id]
         @listing.price = params[:listing][:price]
         @listing.quantity = params[:listing][:quantity]
        #  @listing.picture = params[:listing][:picture]
         @listing.user = current_user
        #  @listing.picture.attach(picture)
         @listing.save
        #   respond_to do |format|
        #     if @listing.save
        #       format.html { redirect_to @listing, notice: 'Type was successfully created.' }
        #       format.json { render :show, status: :created, location: @listing }
        #     else
        #       format.html { render :new }
        #       format.json { render json: @listing.errors, status: :unprocessable_entity }
        #     end
        #   end
          redirect_to buying_index_path
        end
      
        # PATCH/PUT /listings/1
        # # PATCH/PUT /listings/1.json
        # def update
        #   respond_to do |format|
        #     if @listing.update(listing_params)
        #       format.html { redirect_to @listing, notice: 'Type was successfully updated.' }
        #       format.json { render :show, status: :ok, location: @listing }
        #     else
        #       format.html { render :edit }
        #       format.json { render json: @listing.errors, status: :unprocessable_entity }
        #     end
        #   end
        # end
      
        # DELETE /listings/1
        # DELETE /listings/1.json
        # def destroy
        #   @listing.destroy
        #   respond_to do |format|
        #     format.html { redirect_to listings_url, notice: 'Type was successfully destroyed.' }
        #     format.json { head :no_content }
        #   end
        # end
      
        private
          # # Use callbacks to share common setup or constraints between actions.
          # def set_listing
          #   @listing = Listing.find(params[:id])
          # end
      
          # Only allow a list of trusted parameters through.
          # def listing_params
          #   params.require(:listing).permit(:name, :price, :quantity)
          # end
end
      


