class ItemsController < ApplicationController
  before_filter :find_item, :only => :show
  before_filter :find_supplier, :only => [:create, :new]

  def create
    @item = @supplier.items.new(params[:item])

    if @item.save
      redirect_to supplier_item_path(@supplier, @item)
    else
      render :new
    end
  end

  def edit
  end

  def new
    @item = @supplier.items.new
  end

  def show
  end

  def update
  end

  private

  def find_item
    if params[:id].present?
      @item = Item.find(params[:id])
    end
  end

  def find_supplier
    if params[:supplier_id].present?
      @supplier = Supplier.find(params[:supplier_id])
    end
  end
end
