import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseContract {
  Future init(String supabaseUrl, String supabaseAnonKey);

  bool get isAuthenticated;

  User? get currentUser;

  Future<void> signInWithEmailOTP(String email);

  Stream<AuthState> get authStream;

  Future signout();

  Future<bool> isRegisterUser();

  Future registerNewUser(String email);

  Future<Map<String, dynamic>> fetchProfile();

  Future<Map<String, dynamic>> updateProfile(Map<String, dynamic> profile);
}

enum SupabaseTables {
  userTable,
  userBusinessesTable,
  businessTable,
  businessFollowsTable,
}

enum SupabaseColumns {
  id,
  email,
  firstName,
  lastName,
  mobile,
  userStatus,
  userRole,
  address,
}

class SupabaseMapping {
  static String getTableName(SupabaseTables table) {
    switch (table) {
      case SupabaseTables.userTable:
        return 'users';
      case SupabaseTables.userBusinessesTable:
        return 'user_businesses';
      case SupabaseTables.businessTable:
        return 'business';
      case SupabaseTables.businessFollowsTable:
        return 'business_follows';
    }
  }

  static String getColumnKeyName(SupabaseTables table, SupabaseColumns column) {
    switch (table) {
      case SupabaseTables.userTable:
        switch (column) {
          case SupabaseColumns.id:
            return 'id';
          case SupabaseColumns.email:
            return 'email';
          case SupabaseColumns.firstName:
            return 'first_name';
          case SupabaseColumns.lastName:
            return 'last_name';
          case SupabaseColumns.mobile:
            return 'mobile';
          case SupabaseColumns.userStatus:
            return 'user_status';
          case SupabaseColumns.userRole:
            return 'user_role';
          case SupabaseColumns.address:
            return 'address';
        }
      case SupabaseTables.userBusinessesTable:
        // Add mappings for userBusinessesTable columns here
        break;
      case SupabaseTables.businessTable:
        // Add mappings for businessTable columns here
        break;
      case SupabaseTables.businessFollowsTable:
        // Add mappings for businessFollowsTable columns here
        break;
    }
    return '';
  }
}
