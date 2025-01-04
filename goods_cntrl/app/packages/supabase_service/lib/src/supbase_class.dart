import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseClass {
  SupabaseClass(this.redirectURL);
  final String redirectURL;
  StreamSubscription? _streamSubscription;

  Future init(
    String supabaseUrl,
    String supabaseAnonKey,
  ) {
    return Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }

  Future<void> signInWithEmailOTP(String email) async {
    return Supabase.instance.client.auth.signInWithOtp(
      email: email,
      emailRedirectTo: kIsWeb ? null : redirectURL,
    );
  }

  void listen(
    VoidCallback onSuccess,
    VoidCallback onError,
  ) {
    if (_streamSubscription == null) disposeAuthStream();

    _streamSubscription =
        Supabase.instance.client.auth.onAuthStateChange.listen(
      (data) {
        final session = data.session;
        if (session != null) {
          onSuccess();
        }
      },
      onError: (error) {
        onError();
      },
    );
  }

  Future signout() async {
    return Supabase.instance.client.auth.signOut();
  }

  bool get isAuthenticated =>
      Supabase.instance.client.auth.currentSession != null;

  void disposeAuthStream() {
    _streamSubscription?.cancel();
  }
}
