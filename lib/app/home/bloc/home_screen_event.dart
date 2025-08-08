part of 'home_screen_bloc.dart';

sealed class HomeScreenEvent {
  const HomeScreenEvent();
}

class InitialLoadEvent extends HomeScreenEvent {
  const InitialLoadEvent();
}

class ToggleFavoriteEvent extends HomeScreenEvent {
  final int index;

  const ToggleFavoriteEvent(this.index);
}