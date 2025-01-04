part of 'setting_cubit.dart';

class SettingState extends Equatable {
  const SettingState({
    this.customProperty = 'Setting page',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  SettingState copyWith({
    String? customProperty,
  }) {
    return SettingState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class SettingInitial extends SettingState {
  const SettingInitial() : super();
}
