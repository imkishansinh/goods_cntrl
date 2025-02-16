import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_service/src/data/model/supa_user_table_model.dart';

// Supabase contract class
abstract class SupabaseClass {
  /// Basic auth methods
  Future init(
    String supabaseUrl,
    String supabaseAnonKey,
  );

  bool get isAuthenticated;

  User? get currentUser;

  Future<void> signInWithEmailOTP(String email);

  Stream<AuthState> get authStream;

  Future signout();

  /// Dabase methods
  Future registerNewUser(SupaUserTableModel userTable);

  Future<Map<String, dynamic>> fetchProfile();
}
