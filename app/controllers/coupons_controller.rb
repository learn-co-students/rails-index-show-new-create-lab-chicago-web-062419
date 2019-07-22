class CouponsController < ApplicationController
    
    def index
        @coupons = Coupons.all
    end
    
    def show
        @coupon = Coupons.find(params[:id])
    end

    def new
        @coupon = Coupons.new
    end    
    
    def create
        @coupon = Coupons.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
 
    
    
    
    
    
    
    
    
    
    
    
end


