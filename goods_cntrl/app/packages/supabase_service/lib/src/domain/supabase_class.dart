import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/supa_user_table_model.dart';

abstract class SupabaseClass {
  /// Basic auth methods
  Future init(
    String supabaseUrl,
    String supabaseAnonKey,
  );

  bool get isAuthenticated;

  Future<void> signInWithEmailOTP(String email);

  Stream<AuthState> get authStream;

  Future signout();

  /// Dabase methods
  void registerNewUser(SupaUserTableModel userTable);
}
