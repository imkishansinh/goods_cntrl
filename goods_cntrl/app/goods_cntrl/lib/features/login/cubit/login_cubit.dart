import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goods_cntrl/injections/app_injections.dart';
import 'package:supabase_service/supabase_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial());

  FutureOr<void> signUpWithEmailPw(String email) async {
    serviceLocator.get<SupabaseClass>().signInWithEmailOTP(email);
  }
}
