# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def title_with_yr
    

    return "#{self.title} (#{self.year})"
  end

  def director
    id = self.director_id
    match_director = Director.where({ :id => id })
    the_director =  match_director.at(0)
    return the_director
  end
end
