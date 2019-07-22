class CouponsController < ApplicationController
#!INDEX
#show all of the coupons in the database
# coupon codes on the `index` page should link to their corresponding coupon `show` page
# use the `link_to` method and route helper methods instead of hard-coding an HTML `<a>` tag.
    def index
        @coupons = Coupon.all   
    end

#!SHOW
# render the specific coupon passed to the route. E.g., `coupons/4` should show the coupon with an ID of 4
    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

end
