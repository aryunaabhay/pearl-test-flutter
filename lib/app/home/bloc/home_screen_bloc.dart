
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../shared/domain/usecases/get_movies_usecase.dart';
import '../entities/movie.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState()) {
    on<InitialLoadEvent>(initialLoad);
  }

  void initialLoad(
    InitialLoadEvent event,
    Emitter<HomeScreenState> emit,) async{
    try {
      final movies = await GetMoviesUseCase.execute();
      emit(state.copyWith(movies: movies));
    } catch (e) {
      // Handle error, maybe emit an error state
      print('Error loading movies: $e');
    }
  }
}
