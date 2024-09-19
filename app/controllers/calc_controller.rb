class CalcController < ApplicationController
  def new_square
    render({ template: "calc_templates/square"})
  end
end
