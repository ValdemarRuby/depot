class ContactsController < ApplicationController

  def index
    redirect_to store_url, notice: "Invalid contact"
  end

  private

end