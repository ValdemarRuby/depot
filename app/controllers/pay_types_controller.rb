class PayTypesController < ApplicationController

  def new
    @pay_name = PayType.all
  end

  def create
    @pay_type = PayType.new(pay_type_params)

    respond_to do |format|
      if @pay_type.save
        format.html { redirect_to store_url, notice: 'Thank you for your orders' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @pay_type.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def pay_type_params
    params.require(:order).permit(:pay_name)
  end
end