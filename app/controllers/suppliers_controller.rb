class SuppliersController < ApplicationController
  before_filter :find_supplier, :only => :show

  def index
    @suppliers = Supplier.all
  end

  def show
  end

  private

  def find_supplier
    if params[:id].present?
      @supplier = Supplier.find(params[:id])
    end
  end
end
