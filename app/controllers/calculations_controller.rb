class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def sqrt
    # Parameters: {"thenumber"=>"1"}

    @number = params[:thenumber].to_f

    @answer = @number ** 0.5

    render("sqrt.html.erb")
  end

  def random_number
    # Parameters: {"lower"=>"50", "upper"=>"100"}

    @lower = params[:lower].to_f

    @upper = params[:upper].to_f

    @random = rand(@lower...@upper).to_i


    render("random_number.html.erb")

  end

  def payment
    # Parameters: {"year"=>"30", "principal"=>"250000", "apr"=>"4"}

    @years = params[:year].to_f

    @apr = params[:apr].to_f

    @principal = params[:principal].to_f

    payments = params[:year].to_f * 12

    effective_r = params[:apr].to_f / 1200

    denominator = 1 - ((1 + effective_r) ** (payments * -1))

    @monthly_payment = params[:principal].to_f * effective_r / denominator

    render("payment.html.erb")
  end

end
