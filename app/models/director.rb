# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
       id = self.id
       movie_match = Movie.where({ :director_id => id})

       return movie_match
  end
  
  def films
    id = self.id
    movie_match = Movie.where({ :director_id => id})

    return movie_match
end 
end
