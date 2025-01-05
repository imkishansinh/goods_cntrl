import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'model/supa_user_table_model.dart';

final _supabase = Supabase.instance.client;

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
    return _supabase.auth.signInWithOtp(
      email: email,
      emailRedirectTo: kIsWeb ? null : redirectURL,
    );
  }

  void listen(
    VoidCallback onSuccess,
    VoidCallback onError,
  ) {
    if (_streamSubscription == null) disposeAuthStream();

    _streamSubscription = _supabase.auth.onAuthStateChange.listen(
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
    return _supabase.auth.signOut();
  }

  bool get isAuthenticated => _supabase.auth.currentSession != null;

  void disposeAuthStream() {
    _streamSubscription?.cancel();
  }

  Future registerNewUser(String email) async {
    final temp = SupaUserTableModel(email).toJson();
    _supabase.from(_userTable).insert(
          temp,
        );
  }
}

// class SupabaseDb {
//   Future registerNewUser(String email) async {
//     _supabase.from(_userTable).insert(
//           SupaUserTableModel(email).toJson(),
//         );
//   }
// }

const String _userTable = 'users';
// const String _businessTable = 'business';
// const String _userBusinessesTable = 'user_businesses';
// const String _businessFollowsTable = 'business_follows';
