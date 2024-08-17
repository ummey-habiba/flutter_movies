class Movie{
  String name;
  String genre;
  String rating;
  String image ;
  bool favourite;


  Movie({
    required this.name,
    required this.genre,
    required this.rating,
    required this.image,
    this.favourite=false
  });
}
final movieList=[
  Movie(name: 'Inception', genre: 'Science Fiction', rating: '7.0', image: 'assets/images/inception.jpg'),
  Movie(name: 'The Dark Knight', genre: 'Action,Crime', rating: '6.5', image: 'assets/images/the dark knight.jpg'),
  Movie(name: 'Parasite', genre: 'Thriller', rating: '7.5', image: 'assets/images/parasite.jpg'),
  Movie(name: 'Pulp Fiction', genre: 'Crime', rating: '8.0', image: 'assets/images/pulp fiction.jpg'),

];