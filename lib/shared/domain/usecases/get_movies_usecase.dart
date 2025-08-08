import '../../../app/home/entities/movie.dart';

class GetMoviesUseCase {
  static Future<List<Movie>> execute() {
    return Future.value([
      Movie(
        isFavorite: false,
        title: 'Movie 1',
        createdAt: DateTime.now(),
        status: MovieStatus.newMovie,
      ),
      Movie(
        isFavorite: false,
        title: 'Movie 2',
        createdAt: DateTime.now(),
        status: MovieStatus.oldMovie,
      ),
      Movie(
        isFavorite: false,
        title: 'Movie 3',
        createdAt: DateTime.now(),
        status: MovieStatus.hotMovie,
      ),
    ]);
  }
}
