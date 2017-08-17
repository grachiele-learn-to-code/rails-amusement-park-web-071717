class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def take_ride

  	# passing case
  	# user has enough tickets for attraction && is tall enough
  	if self.user.tickets >= self.attraction.tickets && self.user.height >= self.attraction.min_height

  		# user can take ride - update values accordingly

  		# subtract ticket cost from user's tickets
  		self.user.tickets -= self.attraction.tickets
  		# adjust user happiness
  		self.user.happiness += self.attraction.happiness_rating
  		# adjust user nausea
  		self.user.nausea += self.attraction.nausea_rating
  		# save user changes
  		self.user.save


  	# first fail case
  	# user is tall enough to ride but not enough tickets
  	elsif self.user.height >= self.attraction.min_height && self.user.tickets < self.attraction.tickets
  		"Sorry. You do not have enough tickets to ride the #{attraction.name}."

  	#second fail case
  	# user has enough tickets but not tall enough
  	elsif self.user.height < self.attraction.min_height &&	self.user.tickets >= self.attraction.tickets
  		"Sorry. You are not tall enough to ride the #{attraction.name}."

  	# final fail case, fails both requirements
  	else
  		"Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."

  	end


  end

end
