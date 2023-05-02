# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Starring.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

#My Code is below:
# rails generate model Movie
# rails generate model Studio
# rails generate model Actor
# rails generate model Starring

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
studio_1 = Studio.new
studio_1["name"] = "Warner Bros"
studio_1.save

actor_1 = Actor.new
actor_1["name"] = "Christian Bale"
actor_1.save

actor_2 = Actor.new
actor_2["name"] = "Michael Caine"
actor_2.save

actor_3 = Actor.new
actor_3["name"] = "Liam Neeson"
actor_3.save

actor_4 = Actor.new
actor_4["name"] = "Katie Holmes"
actor_4.save

actor_5 = Actor.new
actor_5["name"] = "Gary Oldman"
actor_5.save

actor_6 = Actor.new
actor_6["name"] = "Heath Ledger"
actor_6.save

actor_7 = Actor.new
actor_7["name"] = "Aaron Eckhart"
actor_7.save

actor_8 = Actor.new
actor_8["name"] = "Maggie Gyllenhaal"
actor_8.save

actor_9 = Actor.new
actor_9["name"] = "Tom Hardy"
actor_9.save

actor_10 = Actor.new
actor_10["name"] = "Joseph Gordon-Levitt"
actor_10.save

actor_11 = Actor.new
actor_11["name"] = "Anne Hathaway"
actor_11.save

warner = Studio.find_by({ "name" => "Warner Bros" })

movie_1 = Movie.new
movie_1["title"] = "Batman Begins"
movie_1["year"] = "2005"
movie_1["mpaa_rating"] = "PG-13"
movie_1["studio_id"] = warner["id"]
movie_1.save

movie_2 = Movie.new
movie_2["title"] = "The Dark Knight"
movie_2["year"] = "2008"
movie_2["mpaa_rating"] = "PG-13"
movie_2["studio_id"] = warner["id"]
movie_2.save

movie_3 = Movie.new
movie_3["title"] = "The Dark Knight Rises"
movie_3["year"] = "2012"
movie_3["mpaa_rating"] = "PG-13"
movie_3["studio_id"] = warner["id"]
movie_3.save

christian = Actor.find_by({ "name" => "Christian Bale" })
michael = Actor.find_by({ "name" => "Michael Caine" })
liam = Actor.find_by({ "name" => "Liam Neeson" })
katie = Actor.find_by({ "name" => "Katie Holmes" })
gary = Actor.find_by({ "name" => "Gary Oldman" })
heath = Actor.find_by({ "name" => "Heath Ledger" })
aaron = Actor.find_by({ "name" => "Aaron Eckhart" })
maggie = Actor.find_by({ "name" => "Maggie Gyllenhaal" })
tom = Actor.find_by({ "name" => "Tom Hardy" })
joseph = Actor.find_by({ "name" => "Joseph Gordon-Levitt" })
anne = Actor.find_by({ "name" => "Anne Hathaway" })

begins = Movie.find_by({ "title" => "Batman Begins" })
knight = Movie.find_by({ "title" => "The Dark Knight" })
rises = Movie.find_by({ "title" => "The Dark Knight Rises" })

starring_1 = Starring.new
starring_1["actor_id"] =  christian["id"]
starring_1["movie_id"] =  begins["id"]
starring_1["character"] = "Bruce Wayne"
starring_1.save

starring_2 = Starring.new
starring_2["actor_id"] =  michael["id"]
starring_2["movie_id"] =  begins["id"]
starring_2["character"] = "Alfred"
starring_2.save

starring_3 = Starring.new
starring_3["actor_id"] =  liam["id"]
starring_3["movie_id"] =  begins["id"]
starring_3["character"] = "Ra's Al Ghul"
starring_3.save

starring_4 = Starring.new
starring_4["actor_id"] =  katie["id"]
starring_4["movie_id"] =  begins["id"]
starring_4["character"] = "Rachel Dawes"
starring_4.save

starring_5 = Starring.new
starring_5["actor_id"] =  gary["id"]
starring_5["movie_id"] =  begins["id"]
starring_5["character"] = "Commissioner Gordon"
starring_5.save

starring_6 = Starring.new
starring_6["actor_id"] =  christian["id"]
starring_6["movie_id"] =  knight["id"]
starring_6["character"] = "Bruce Wayne"
starring_6.save

starring_7 = Starring.new
starring_7["actor_id"] =  heath["id"]
starring_7["movie_id"] =  knight["id"]
starring_7["character"] = "Joker"
starring_7.save

starring_8 = Starring.new
starring_8["actor_id"] =  aaron["id"]
starring_8["movie_id"] =  knight["id"]
starring_8["character"] = "Harvey Dent"
starring_8.save

starring_9 = Starring.new
starring_9["actor_id"] =  michael["id"]
starring_9["movie_id"] =  knight["id"]
starring_9["character"] = "Alfred"
starring_9.save

starring_10 = Starring.new
starring_10["actor_id"] =  maggie["id"]
starring_10["movie_id"] =  knight["id"]
starring_10["character"] = "Rachel Dawes"
starring_10.save

starring_11 = Starring.new
starring_11["actor_id"] =  christian["id"]
starring_11["movie_id"] =  rises["id"]
starring_11["character"] = "Bruce Wayne"
starring_11.save

starring_12 = Starring.new
starring_12["actor_id"] =  gary["id"]
starring_12["movie_id"] =  rises["id"]
starring_12["character"] = "Commissioner Gordon"
starring_12.save

starring_13 = Starring.new
starring_13["actor_id"] =  tom["id"]
starring_13["movie_id"] =  rises["id"]
starring_13["character"] = "Bane"
starring_13.save

starring_14 = Starring.new
starring_14["actor_id"] =  joseph["id"]
starring_14["movie_id"] =  rises["id"]
starring_14["character"] = "John Blake"
starring_14.save

starring_15 = Starring.new
starring_15["actor_id"] =  anne["id"]
starring_15["movie_id"] =  rises["id"]
starring_15["character"] = "Selina Kyle"
starring_15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.all

for movie in movies
    title = movie["title"]
    year = movie["year"]
    mpaa_rating = movie["mpaa_rating"]
    studio = Studio.find_by({"id" => movie["studio_id"]})
    studio_name = studio["name"]
    puts "#{title} - #{year} - #{mpaa_rating} - #{studio_name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Starring.all

for role in roles
    movie = Movie.find_by({"id" => role["movie_id"]})
    movie_title = movie["title"]
    actor = Actor.find_by({"id" => role["actor_id"]})
    actor_name = actor["name"]
    character = role["character"]
    puts "#{movie_title} - #{actor_name} - #{character}"
end
