# Code your solution here! 


def blue_aliens
   # return the names and colors of all the aliens that are 'blue'
   SELECT name, color FROM aliens WHERE color = 'blue'
end

def old_aliens
   # return the names and ages of all aliens over the age of 100
   SELECT name, age FROM aliens WHERE age > 100
end

def dangerous_aliens
   # return the names of the dangerous aliens
   SELECT name FROM aliens WHERE dangerous = true
end

def fastest_spaceship
 # return all of the info about the fastest spaceship
 SELECT * FROM spaceships ORDER BY speed DESC LIMIT 1
end

def aliens_aboard_fastest_spaceship
  #return a list of the aliens aboard the fastest spaceship
  SELECT aliens.name FROM aliens INNER JOIN spaceships ON aliens.spaceship_id = spaceship.id ORDER BY spaceship.speed DESC LIMIT 1
end


def aliens_and_spaceships
  # Return a list of all aliens and the spaceship they belong to
  SELECT aliens.name FROM aliens JOIN spaceships ON aliens.spaceship_id = spaceships.id WHERE spaceships.speed = (SELECT MAX(spaceships.speed) FROM spaceships);
end

def aliens_and_planets
 # Get a list of all aliens and the planets they belong to 
 SELECT aliens.name, planets.name FROM aliens JOIN spaceships ON aliens.spaceship_id = spaceships.id JOIN planets ON spaceships.planet_id = planets.id
end

def aliens_aboard_beebop
   # Get a list of all aliens aboard a the spaceship named 'Beebop'  
   SELECT aliens.name FROM aliens JOIN spaceships ON aliens.spaceship_id = spaceships.id WHERE spaceships.name = 'Beebop'
end

def aliens_from_gliese
   # Get a list of all aliens from the planet named 'Gliese'
   SELECT aliens.name FROM aliens JOIN spaceships ON aliens.spaceship_id = spaceships.id JOIN planets ON spaceships.planet_id = planets.id WHERE planets.name = "Gliese"
end

def spaceship_count_for_each_planet
  # Return each planet's name and how many spaceships are from each planet
  SELECT planets.name, COUNT(spaceships.id) FROM planets JOIN spaceships ON planets.spaceship_id = spaceships.id GROUP BY planets.idSELECT planets.name, COUNT(spaceships.id) FROM planets JOIN spaceships ON planets.id = spaceships.planet_id GROUP BY planets.id
end

def alien_count_for_spaceships
    # Return each spaceships's name and how many aliens are aboard each spaceship    
    SELECT spaceships.name, COUNT(aliens.id) FROM spaceships JOIN aliens.spaceship_id = spaceships.id GROUP BY spaceships.idSELECT spaceships.name, COUNT(aliens.id) FROM spaceships JOIN aliens ON aliens.spaceship_id = spaceships.id GROUP BY spaceships.id
end

def alien_count_for_planets
    # Return each planet's name and how many aliens are from each planet
    SELECT planets.name, COUNT(aliens.id) FROM planets JOIN spaceships ON spaceships.planet_id = planets.id JOIN aliens ON aliens.spaceship_id = spaceships.id GROUP BY planets.id  
end

def order_planets_by_aliens
   # Order the planets from most number of aliens to least number of aliens
   SELECT planets.name, COUNT(aliens.id) FROM planets JOIN spaceships ON planets.id = spaceships.planet_id JOIN aliens ON spaceships.id = aliens.spaceship_id GROUP BY planets.id ORDER BY COUNT(aliens.id) DESC
end

def spaceshisps_with_blue_aliens
   # return the names of spaceships that have blue aliens aboard
   SELECT spaceships.name FROM spaceships JOIN aliens ON spaceships.id = aliens.spaceship_id WHERE aliens.color = 'blue'SELECT spaceships.name FROM spaceships JOIN aliens ON spaceships.id = aliens.spaceship_id WHERE aliens.color = 'blue' GROUP BY spaceships.id
end

def spaceship_and_alien_count
  # return a count of all spaceships from a planet and the total number of aliens from that planet
  SELECT planets.name, spaceships.name, COUNT(aliens.id) FROM planets JOIN spaceships ON planets.id = spaceships.planet_id JOIN aliens ON aliens.spaceship_id = spaceships.id GROUP BY planets.id
end

def order_planets_by_alien_count
   # order the planets based on how many aliens are from that planet
end

def order_planets_by_old_alien_count
   ## MOST DIFFICULT 
   # order the planets based on how many aliens over the age of 100 are from that planet
end

