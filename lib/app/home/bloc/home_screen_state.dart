part of 'home_screen_bloc.dart';

class HomeScreenState extends Equatable {
  const HomeScreenState({this.movies = const []});

  final List<Movie> movies;

  @override
  List<Object> get props => [
    movies,
  ];

  HomeScreenState copyWith({
    List<Movie>? movies,
  }) {
    return HomeScreenState(
      movies: movies ?? this.movies,
    );
  }
}
