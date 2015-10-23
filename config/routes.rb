Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:thenumber", { :controller => "calculations", :action => "sqrt" })

  get("/random_number/:lower/:upper", { :controller => "calculations", :action => "random_number" })

  get("/payment/:year/:principal/:apr", { :controller => "calculations", :action => "payment" })
end
