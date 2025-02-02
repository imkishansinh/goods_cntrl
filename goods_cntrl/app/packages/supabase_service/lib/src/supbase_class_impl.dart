import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_service/src/data/model/supa_user_table_model.dart';
import 'package:supabase_service/src/domain/supabase_class.dart';

final _supabase = Supabase.instance.client;

class SupabaseClassImpl implements SupabaseClass {
  SupabaseClassImpl(this.redirectURL);

  final String redirectURL;

  bool _isInit = false;
  bool get isInit => _isInit;

  @override
  Future init(
    String supabaseUrl,
    String supabaseAnonKey,
  ) {
    if (!_isInit) {
      _isInit = true;
      return Supabase.initialize(
        url: supabaseUrl,
        anonKey: supabaseAnonKey,
      );
    }

    return Future.value();
  }

  @override
  Future<void> signInWithEmailOTP(String email) async {
    return _supabase.auth.signInWithOtp(
      email: email,
      emailRedirectTo: kIsWeb ? null : redirectURL,
    );
  }

  @override
  Future signout() async {
    return _supabase.auth.signOut();
  }

  @override
  bool get isAuthenticated => _supabase.auth.currentSession != null;

  @override
  User? get currentUser => _supabase.auth.currentUser;

  @override
  Stream<AuthState> get authStream => _supabase.auth.onAuthStateChange;

  @override
  Future registerNewUser(SupaUserTableModel userModel) {
    if (_supabase.auth.currentUser == null) {
      throw Exception('User not authenticated');
    }
    return Future.value(_supabase.from(_userTable).insert(userModel.toJson()));
  }

  @override
  Future<List<Map<String, dynamic>>> fetchProfile() async {
    final data = await _supabase.from(_userTable).select().eq(
          'email',
          currentUser!.email!,
        );
    return Future.value(data);
  }
}

const String _userTable = 'users';
// const String _businessTable = 'business';
// const String _userBusinessesTable = 'user_businesses';
// const String _businessFollowsTable = 'business_follows';
