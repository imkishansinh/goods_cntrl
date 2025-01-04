import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(const SettingInitial());

  /// A description for yourCustomFunction 
  FutureOr<void> yourCustomFunction() {
    // TODO: Add Logic
  }
}
