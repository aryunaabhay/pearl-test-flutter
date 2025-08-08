import 'package:app/app/home/bloc/home_screen_bloc.dart';
import 'package:app/app/home/ui-components/movie_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenBloc()..add(InitialLoadEvent()),
      child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          final bloc = BlocProvider.of<HomeScreenBloc>(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
            ),
            body: ListView.builder(
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                return MovieItemWidget(movie: state.movies[index],
                    onFavoriteToggle: (favorite){

                  bloc.add(ToggleFavoriteEvent(index));

                });
              },
            ),
          );
        },
      ),
    );
  }
}
