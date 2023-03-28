class ActorController < ApplicationController
def index
  @all_actors_list = Actor.all #returns a list of all actors
  render({:template=>"actor_template/index.html.erb"})
end
def actor_details
  actor_id = params.fetch("actor_id")
  @actor = Actor.where({:id => actor_id}).at(0)
  movie_detail = Movie.all.where({:id=>@actor})
  information = Character.all.where({:movie_id=>@actor})
  @movie_info = Movie.all.where({:id=>information})
  render({:template=>"actor_template/actor_details.html.erb"})
end
end

#character table has both movie_id and actor_id

# actor = Actor.where({:id => actor_id}).at(0) # Actor table -> return actor_id columns that match actor_id. example:Morgan Freeman id:1== id:1
# information = Character.all.where({:movie_id=>actor})
#return all data in the Character table where the :movie_id matches the actor(id)???
# @movie_info = Movie.all.where({:id=>information})
#return all the data from the movie table where the id matches the information


