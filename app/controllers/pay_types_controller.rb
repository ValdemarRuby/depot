class PayTypesController < ApplicationController
  def new
    @pay_name = PayType.all
  end
end