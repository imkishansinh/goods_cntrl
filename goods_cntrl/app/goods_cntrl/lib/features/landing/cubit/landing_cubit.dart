import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(const LandingInitial());

  FutureOr<void> yourCustomFunction() {}
}
