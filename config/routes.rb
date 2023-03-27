Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors",{:controller=>"directors", :action=>"index"})
  get("/directors/eldest",{:controller=>"directors", :action=>"wisest"})
  get("/directors/:an_id",{:controller=>"directors", :action=>"director_details"})

  get("/actors",{:controller=>"directors", :action=>"index"})
  get("/movie",{:controller=>"directors", :action=>"index"})
  get("/character",{:controller=>"directors", :action=>"index"})
end
