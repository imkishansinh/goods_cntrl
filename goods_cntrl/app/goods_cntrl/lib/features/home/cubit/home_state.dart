part of 'home_cubit.dart';

class HomeState extends Equatable {
  /// {@macro home}
  const HomeState({
    this.customProperty = 'Home page',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  HomeState copyWith({
    String? customProperty,
  }) {
    return HomeState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template home_initial}
/// The initial state of HomeState
/// {@endtemplate}
class HomeInitial extends HomeState {
  /// {@macro home_initial}
  const HomeInitial() : super();
}
