movies = [
  {
    title: "Inception",
    director: "Christopher Nolan",
    year: 2010,
    genre: "Science Fiction"
  },
  {
    title: "Parasite",
    director: "Bong Joon-ho",
    year: 2019,
    genre: "Thriller"
  },
  {
    title: "The Godfather",
    director: "Francis Ford Coppola",
    year: 1972,
    genre: "Crime"
  }
]

movies.each do |movie_data|
  movie = Movie.find_or_initialize_by(title: movie_data[:title])
  movie.update!(movie_data)
end