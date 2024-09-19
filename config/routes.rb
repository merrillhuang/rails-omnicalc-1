Rails.application.routes.draw do
  get("/", { controller: "calc", action: "new_square"})

  get("/square/results", { controller: "calc", action: "square_results"})
end
