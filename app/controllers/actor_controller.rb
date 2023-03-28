class ActorController < ApplicationController
def index
  @all_actors_list = Actor.all #returns a list of all actors
  render({:template=>"actor_template/index.html.erb"})
end
def actor_details
  actor_id = params.fetch("actor_id")
  @actor = Actor.where({:id => actor_id}).at(0)

  characters = Character.where({ :actor_id => actor_id })
   list_of_movie_ids = characters.map_relation_to_array(:movie_id)

  @filmography = Movie.where({:id=>list_of_movie_ids})

  render({:template=>"actor_template/actor_details.html.erb"})
end
end
