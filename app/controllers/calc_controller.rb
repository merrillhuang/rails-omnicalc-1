class CalcController < ApplicationController
  def new_square
    render({ template: "calc_templates/square"})
  end

  def square_results
    @input = params.fetch("number")
    @result = (@input ** 2).to_d

    render({ template: "calc_templates/square_result"})
  end
end
