class InputsController < ApplicationController
  def index 
    @inputs = Input.all.order("created_at DESC").limit(1)
  end

  def new
    @input = Input.new
  end

  def create
    @input = Input.new(input_params)
    if @input.valid?
      @input.save
      redirect_to inputs_path
    else
      render new
    end
  end

  private
  def input_params
    params.require(:input).permit(:code)
  end
end
