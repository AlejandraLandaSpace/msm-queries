class ActorController < ApplicationController
def index
  @all_actors_list = Actor.all 
  render({:template=>"actor_template/index.html.erb"})
end
def actor_details
  @list_of_actors = Actor.all
  @list_of_characters = Character.all
  @list_of_movies = Movie.all
  actor_id = params.fetch("actor_id")
  character = Character.where({ :actor_id => actor_id})
  list_of_movie_ids = character.map_relation_to_array(:movie_id)
  @actor = @list_of_actors.where({ :id => actor_id }).at(0)
  @filmography = Movie.where({ :id => list_of_movie_ids})
  @character = Character.where({ :actor_id => @actor})
  render({ :template => "actor_template/actor_details.html.erb"})
end
end
