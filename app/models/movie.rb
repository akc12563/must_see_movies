class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :counter_cache => true

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :castings,
             :source => :actor

  # Validations

end
