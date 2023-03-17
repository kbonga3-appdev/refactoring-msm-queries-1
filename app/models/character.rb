# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    ids = self.movie_id
    movie_match = Movie.where({ :id => ids})
    the_movie = movie_match.at(0)
    return the_movie
  end

  def actor
    ids = self.actor_id
    actor_match = Actor.where({ :id => ids})
    the_actor = actor_match.at(0)
    return the_actor
  end

end
