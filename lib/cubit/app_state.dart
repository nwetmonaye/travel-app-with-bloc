part of 'app_cubit.dart';

sealed class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

final class AppInitial extends AppState {}

final class InitialState extends AppState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

final class WelcomeState extends AppState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

final class LoadingState extends AppState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

final class LoadedState extends AppState {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [places];
}

final class DetailState extends AppState {
  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  List<Object> get props => [place];
}
