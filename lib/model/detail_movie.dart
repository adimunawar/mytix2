part of 'model.dart';

class DetailMovie extends Movie {
  final List<String> genres;
  final String language;

  DetailMovie(Movie movie, {this.genres, this.language})
      : super(
            id: movie.id,
            title: movie.title,
            voteAverenge: movie.voteAverenge,
            overview: movie.overview,
            posterPath: movie.posterPath,
            backdropPath: movie.backdropPath);


String get genresAndLanguage {
  
  String s ='';
  for (var genre in genres){
    s += genre +(genre != genres.last ?',':'');
  }
  return "$s - $language";
}

  @override
  List<Object> get props =>
      [genres, language];

}

