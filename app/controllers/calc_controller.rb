class CalcController < ApplicationController
  def new_square
    render({ template: "calc_templates/square"})
  end

  def square_results
    @input = params.fetch("number")
    @result = (@input.to_f) ** 2

    render({ template: "calc_templates/square_result"})
  end
end
