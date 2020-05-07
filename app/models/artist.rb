require_relative "../models/concerns/slugifiable.rb"

class Artist < ActiveRecord::Base 
  has_many :songs 
  has_many :genres, through: :songs
  
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
<<<<<<< HEAD
=======

>>>>>>> 6d29d864cfbae92cfc52dabcaf249d00b1146e03
end