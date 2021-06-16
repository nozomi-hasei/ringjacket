class InputsController < ApplicationController
  def index 
    @inputs = Input.all.order("created_at DESC")
  end

  def new
    @input = Input.new
  end

  def create
    @input = Input.new(input_params)
    if @input.valid?
      @input.save
      redirect_to new_input_path
    else
      render new
    end
  end

  private
  def input_params
    params.permit(:c_name, :i_name)
  end
end
