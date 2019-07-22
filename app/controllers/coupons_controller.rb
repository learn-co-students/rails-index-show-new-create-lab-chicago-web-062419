class CouponsController < ApplicationController
    before_action :find_coupon, only: [:show]

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def show
    end

    def create
        @coupon = Coupon.new
        @coupon.store = params[:store]
        @coupon.coupon_code = params[:coupon_code]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    private

    def find_coupon
        @coupon = Coupon.all.find(params[:id])
    end
end
