import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial());

  FutureOr<void> signUpWithEmailPw(String email) async {
    Supabase.instance.client.auth.signInWithOtp(
      email: email,
      emailRedirectTo: kIsWeb ? null : dotenv.env['supbase_redirect_url'],
    );
  }
}
