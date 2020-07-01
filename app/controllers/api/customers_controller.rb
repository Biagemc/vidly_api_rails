class Api::CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(:name)
    render "index.json.jb"
  end

  def show
    @customer = Customer.find(params[:id])
    render "show.json.jb"
  end

  def create
    @customer = Customer.create(
      name: params[:name],
      isGold: params[:is_gold],
      phone: params[:phone],
    )
    render "show.json.jb"
  end

  def update
    @customer = Customer.find(params[:id])
    @customer = params[:name] || @customer.name
    @customer = params[:is_gold] || @customer.isGold
    @customer = params[:phone] || @customer.phone

    if @customer.save
      render "show.json.jb"
    else
      render json: { error: @customer.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      render json: { message: "Customer sucessfuly deleted" }
    else
      render json: { errors: @customer.errors.full_messages }, status: :bad_request
    end
  end
end
