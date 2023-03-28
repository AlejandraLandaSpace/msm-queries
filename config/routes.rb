Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors",{:controller=>"directors", :action=>"index"})
  get("/directors/eldest",{:controller=>"directors", :action=>"wisest"})
  get("/directors/youngest",{:controller=>"directors", :action=>"youngest"})
  get("/directors/:an_id",{:controller=>"directors", :action=>"director_details"})

  get("/movies",{:controller=>"movie", :action=>"movieIndex"})
  get("/movies/:movie_id",{:controller=>"movie", :action=>"movie_details"})

  get("/actors",{:controller=>"actor", :action=>"index"})
  get("/actors/:actor_id",{:controller=>"actor", :action=>"actor_details"})
 
  get("/character",{:controller=>"directors", :action=>"index"})
end
