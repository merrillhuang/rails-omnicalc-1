class CalcController < ApplicationController
  def new_square
    render({ template: "calc_templates/square"})
  end

  def square_results
    @input = params.fetch("number")
    @result = (@input.to_f) ** 2

    render({ template: "calc_templates/square_result"})
  end

  def new_square_root
    render({ template: "calc_templates/square_root"})
  end

  def square_root_results
    @input = params.fetch("number")
    @result = (@input.to_f) ** 0.5

    render({ template: "calc_templates/square_root_result"})
  end

  def new_payment
    render({ template: "calc_templates/payment"})
  end

  def payment_results
    apr = params.fetch("apr").to_f
    @apr = apr.to_fs(:percentage, {:precision => 4})
    @years = params.fetch("years").to_i
    princ = params.fetch("princ").to_f
    @princ = princ.to_fs(:currency)
    apr_percent = apr/100/12
    months = @years * 12
    @payment = ((apr_percent * princ) / (1 - (1+apr_percent)** (-1 * months))).to_fs(:currency)

    render({ template: "calc_templates/payment_result"})
  end

  def new_random
    render({ template: "calc_templates/random"})
  end

  def random_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @result = rand(@min..@max)

    render( {template: "calc_templates/random_result"})
  end
end
