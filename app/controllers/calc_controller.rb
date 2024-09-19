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
end
