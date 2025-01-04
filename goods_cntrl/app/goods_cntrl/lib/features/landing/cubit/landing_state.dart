part of 'landing_cubit.dart';

class LandingState extends Equatable {
  const LandingState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  LandingState copyWith({
    String? customProperty,
  }) {
    return LandingState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class LandingInitial extends LandingState {
  const LandingInitial() : super();
}
